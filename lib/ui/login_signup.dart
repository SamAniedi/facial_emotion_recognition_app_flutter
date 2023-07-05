import 'package:flutter/material.dart';
import 'package:emoscope/ui/login_page.dart';
import 'package:emoscope/ui/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage("lib/assets/images/logo.png"),
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "EMOSCOPE",
                      style: GoogleFonts.titanOne(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 350,
                width: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/assets/images/image1.png"),
                        fit: BoxFit.fill)),
              ),
              Text(
                "Hello!",
                style: GoogleFonts.kanit(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 74, vertical: 15),
                      backgroundColor: const Color(0xFF92E3A9)),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 69, vertical: 15),
                      shadowColor: const Color(0xFF92E3A9),
                      backgroundColor: Colors.white),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage())),
                  child: const Text(
                    "SIGNUP",
                    style: TextStyle(color:  Color(0xFF92E3A9)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
