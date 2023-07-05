import 'package:camera/camera.dart';
import 'package:emoscope/ui/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:emoscope/ui/camera_page.dart';
import 'package:emoscope/ui/details_page.dart';
import 'package:emoscope/ui/login_signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emoscope/ui/login_page.dart';
import 'firebase_options.dart';
import 'ui/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

List<CameraDescription>? cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 600));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  cameras = await availableCameras();

  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: user != null ? const WelcomePage() : const HomePage(),
    ));
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('lib/assets/images/logo2.png'),
                ),
              ),
            ),
            Text(
              'EmoScope',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w900,
                fontSize: 45,
              ),
            ),
            Text(
              "Your emotional wellness is our priority",
              style: GoogleFonts.pacifico(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF92E3A9),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 72, vertical: 15),
                    textStyle: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginSignup())),
                child: const Text("CONTINUE")),
          ],
        ),
      ),
    );
  }
}
