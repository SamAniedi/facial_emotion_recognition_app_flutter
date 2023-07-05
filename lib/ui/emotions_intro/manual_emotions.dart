import 'package:emoscope/ui/emotions_ui/angry_widget.dart';
import 'package:emoscope/ui/emotions_ui/disgust_widget.dart';
import 'package:emoscope/ui/emotions_ui/happy_widget.dart';
import 'package:emoscope/ui/emotions_ui/neutral_widget.dart';
import 'package:emoscope/ui/emotions_ui/sad_widget.dart';
import 'package:emoscope/ui/emotions_ui/surprise_widget.dart';
import 'package:flutter/material.dart';

import '../emotions_ui/fear_widget.dart';

class ManualEmotions extends StatelessWidget {
  const ManualEmotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF92E3A9),
        title: const Text(
          'What do you feel right now?',
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButtonWithImage(
                  context,
                  'Happy',
                  const HappyWidget(),
                  'lib/assets/images/happy_face_green.png',
                ),
                const SizedBox(height: 16),
                _buildButtonWithImage(
                  context,
                  'Neutral',
                  const NeutralWidget(),
                  'lib/assets/images/neutral_face_green.png',
                ),
                const SizedBox(height: 16),
                _buildButtonWithImage(
                  context,
                  'Sad',
                  const SadWidget(),
                  'lib/assets/images/sad_face_green.png',
                ),
                const SizedBox(height: 16),
                _buildButtonWithImage(
                  context,
                  'Surprise',
                  const SurpriseWidget(),
                  'lib/assets/images/surprise_face_green.png',
                ),
                const SizedBox(height: 16),
                _buildButtonWithImage(
                  context,
                  'Angry',
                  const AngryWidget(),
                  'lib/assets/images/angry_face_green.png',
                ),
                const SizedBox(height: 16),
                _buildButtonWithImage(
                  context,
                  'Disgust',
                  (const DisgustWidget()),
                  'lib/assets/images/disgusted_face_green.png',
                ),
                const SizedBox(height: 16),
                _buildButtonWithImage(
                  context,
                  'Fear',
                  const FearWidget(),
                  'lib/assets/images/fear_face_green.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonWithImage(
    BuildContext context,
    String buttonText,
    Widget routeWidget,
    String imagePath,
  ) {
    return Container(
      width: 250,
      height: 70,
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 70,
            height: 70,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => routeWidget),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF92E3A9),
                ),
              ),
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}


    
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF92E3A9),
//         title: const Text('What do you feel right now?'),
//       ),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Container(
//           margin: EdgeInsets.only(top: 150),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 200,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const HappyWidget()),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(const Color(0xFF92E3A9)),
//                     ),
//                     child: const Text('Happy'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   width: 200,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const NeutralWidget()),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(const Color(0xFF92E3A9)),
//                     ),
//                     child: const Text('Neutral'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   width: 200,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SadWidget()),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(const Color(0xFF92E3A9)),
//                     ),
//                     child: const Text('Sad'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   width: 200,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SurpriseWidget()),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(const Color(0xFF92E3A9)),
//                     ),
//                     child: const Text('Surprise'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   width: 200,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const AngryWidget()),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(const Color(0xFF92E3A9)),
//                     ),
//                     child: const Text('Angry'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   width: 200,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const DisgustWidget()),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(const Color(0xFF92E3A9)),
//                     ),
//                     child: const Text('Disgust'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   width: 200,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const FearWidget()),
//                       );
//                     },
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all<Color>(const Color(0xFF92E3A9)),
//                     ),
//                     child: const Text('Fear'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
