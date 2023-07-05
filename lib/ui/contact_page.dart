import 'package:emoscope/ui/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const WelcomePage()),
              (route) => false);
        },
        label: const Text("Back to Home"),
        backgroundColor: Colors.black,
        focusColor: Colors.red,
        hoverColor: Colors.blue,
        icon: const Icon(Icons.home),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Container(
            height: 350,
            width: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/contact_us.png"),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Email us at",
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "emoscope23@gmail.com",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
    







//     return Scaffold(
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(builder: (context) => const WelcomePage()),
//               (route) => false);
//         },
//         label: const Text("Back to Home"),
//         backgroundColor: Colors.black,
//         focusColor: Colors.red,
//         hoverColor: Colors.blue,
//         icon: const Icon(Icons.home),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 100),
//           Image.asset(
//             'lib/assets/images/image_3.png',
//             width: 300,
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 40),
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               'You can visit the University Guidance and Counseling Services of the University of Northern Philippines on this link:',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text('www.facebook.com/unpgcsios',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//               'UNP Guidance & Counseling Services and Information & Orientation Services',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic)),
//         ],
//       ),
//     );
//   }
// }
