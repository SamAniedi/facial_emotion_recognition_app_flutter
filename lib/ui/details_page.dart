// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:emoscope/ui/emotions_intro/neutral_intro.dart';
import 'package:flutter/material.dart';
import 'package:emoscope/ui/emotions_intro/angry_intro.dart';
import 'package:emoscope/ui/emotions_intro/fear_intro.dart';
import 'package:emoscope/ui/emotions_intro/surprise_intro.dart';
import 'package:emoscope/ui/emotions_intro/disgust_intro.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import '../db_methods/database_helper.dart';
import '../db_methods/emotions.dart';
import 'emotions_intro/happy_intro.dart';
import 'emotions_intro/no_emo.dart';
import 'emotions_intro/sad_intro.dart';


class DetailsPage extends StatelessWidget {
  final String output;
  bool emotionRecorded = false;

  DetailsPage({
    Key? key,
    required this.output,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!emotionRecorded) {
      Emotion emotion = Emotion(output: output, date: DateTime.now());
      DatabaseHelper.instance.insertEmotion(emotion);
      emotionRecorded = true;
    }

    return EmotionDetailsWidget(output: output);
  }
}

class EmotionDetailsWidget extends StatelessWidget {
  final String output;

  EmotionDetailsWidget({
    Key? key,
    required this.output,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (output) {
      case "Angry":
        return const AngryIntro();
      case "Happy":
        return const HappyIntro();
      case "Sad":
        return const SadIntro();
      case "Surprise":
        return const SurpriseIntro();
      case "Fear":
        return const FearIntro();
      case "Disgust":
        return const DisgustIntro();
      case "Neutral":
        return const NeutralIntro();
      default:
        return const NoEmo();
    }
  }
}


// class DetailsPage extends StatelessWidget {
//   final String output;
//   const DetailsPage({
//     Key? key,
//     required this.output,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Emotion emotion = Emotion(output: output, date: DateTime.now());
//     DatabaseHelper.instance.insertEmotion(emotion);

//     switch (output) {
//       case "Angry":
//         return const AngryIntro();
//       case "Happy":
//         return const HappyIntro();
//       case "Sad":
//         return const SadIntro();
//       case "Surprise":
//         return const SurpriseIntro();
//       case "Fear":
//         return const FearIntro();
//       case "Disgust":
//         return const DisgustIntro();
//       case "Neutral":
//         return const NeutralIntro();
//       default:
//         return const NoEmo();
//     }
//   }
// }


