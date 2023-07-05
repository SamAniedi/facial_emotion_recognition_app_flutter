import 'package:flutter/material.dart';

import '../db_methods/database_helper.dart';
import '../db_methods/emotions.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Emotion> emotionList = [];

  Future<void> getEmotionsFromDatabase() async {
    List<Emotion> emotions = await DatabaseHelper.instance.getEmotions();
    setState(() {
      emotionList = emotions.reversed.toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getEmotionsFromDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('Your Emotional Tracker'),
      ),
      body: ListView.builder(
        itemCount: emotionList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(emotionList[index].output),
            subtitle: Text(emotionList[index].date.toString()),
          );
        },
      ),
    );
  }
}
