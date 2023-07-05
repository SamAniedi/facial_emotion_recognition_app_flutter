import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'emotions.dart';

class DatabaseHelper {
  // creating as a singleton
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // variable that will hold the database initialization
  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "emotions.db");
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE IF NOT EXISTS emotions (
      id INTEGER PRIMARY KEY,
      output TEXT,
      date DATETIME
    )
  ''');
  }

  Future<int> insertEmotion(Emotion emotion) async {
    Database db = await instance.database;
    return await db.insert("emotions", emotion.toMap());
  }

  Future<List<Emotion>> getEmotions() async {
    Database db = await instance.database;
    var emotions = await db.query("emotions", orderBy: "date");
    List<Emotion> emotionList = emotions.isNotEmpty
        ? emotions.map((c) => Emotion.fromMap(c)).toList()
        : [];
    return emotionList;
  }
}
