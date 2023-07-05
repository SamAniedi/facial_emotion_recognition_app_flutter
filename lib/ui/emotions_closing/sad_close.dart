import 'dart:math';

import 'package:emoscope/ui/emotions_closing/random_pics_texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../emotions_ui/did_we_help.dart';

class SadClose extends StatefulWidget {
  const SadClose({super.key});

  @override
  State<SadClose> createState() => _SadCloseState();
}

class _SadCloseState extends State<SadClose> {
  int _randomIndex = 0;
  late int _randomTextIndex = 0;

  @override
  void initState() {
    super.initState();
    _randomIndex = Random().nextInt(images.length);
    _randomTextIndex = Random().nextInt(sadRandom.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF92E3A9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Center(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(images[_randomIndex]),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Wrap(
                runSpacing: 20,
                children: [
                  Text(
                    sadRandom[_randomTextIndex],
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 220,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DidWeHelp()));
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
