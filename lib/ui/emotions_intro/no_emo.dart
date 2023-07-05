import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoEmo extends StatelessWidget {
  const NoEmo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF92E3A9),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            Center(
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("lib/assets/images/logowhite.png"))),
              ),
            ),
            Text(
              "No emotion detected, please try again",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 220,
            ),
          ],
        ),
      ),
    );
  }
}
