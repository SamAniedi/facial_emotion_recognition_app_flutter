import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../welcome_page.dart';

class GladWeHelp extends StatelessWidget {
  const GladWeHelp({super.key});

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
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "We are glad that we could help",
                      style: GoogleFonts.roboto(
                          fontSize: 45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Container(
                height: 500,
                width: 375,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/assets/images/image2.png")),
                    shape: BoxShape.circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
