import 'package:emoscope/ui/emotions_ui/fear_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'manual_emotions.dart';

class FearIntro extends StatelessWidget {
  const FearIntro({super.key});

  @override
  Widget build(BuildContext context) {
    Color themeColor = const Color(0xFF92E3A9);

    return Scaffold(
      backgroundColor: themeColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Center(
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("lib/assets/images/fear_face.png"))),
              ),
            ),
            Text(
              "You seem afraid",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textStyle: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.bold),
                foregroundColor: const Color(0xFF92E3A9),
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ManualEmotions()));
              },
              child: const Text(
                "Not the right emotion?",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textStyle: GoogleFonts.roboto(
                    fontSize: 40, fontWeight: FontWeight.bold),
                foregroundColor: const Color(0xFF92E3A9),
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FearWidget()));
              },
              child: const Text(
                "Proceed",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
