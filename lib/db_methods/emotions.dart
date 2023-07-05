class Emotion {
  final int? id;
  final String output;
  final DateTime date;

  Emotion({required this.output, required this.date, this.id});

  factory Emotion.fromMap(Map<String, dynamic> json) => Emotion(
      id: json["id"],
      output: json["output"],
      date: DateTime.parse(json["date"]));

  Map<String, dynamic> toMap() {
    return {"id": id, "output": output, "date": date.toIso8601String()};
  }
}
