import 'package:emoscope/ui/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:emoscope/ui/login_page.dart';
import 'package:emoscope/ui_components/my_textfield.dart';
import 'package:emoscope/ui_components/square_tile.dart';
import 'package:emoscope/ui/camera_page.dart';
import 'package:emoscope/ui/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui_components/my_button.dart';
import '../ui_components/my_button_sign.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _emailController = TextEditingController();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  void signUserIn() {
    //  Navigator.push(context, MaterialPageRoute(builder: (context) => const ModelPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Hi!",
                    style: GoogleFonts.kanit(
                        fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Create a new account",
                    style: GoogleFonts.roboto(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            MyTextField(
                controller: _usernameController,
                hintText: "Enter a username",
                obscureText: false),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: _emailController,
                hintText: "Enter your email",
                obscureText: false),

            const SizedBox(
              height: 20,
            ),

            MyTextField(
                controller: _passwordController,
                hintText: "Enter your password",
                obscureText: true),

            const SizedBox(
              height: 10,
            ),

            // sign in button
            MyButton2(
              onTap: () async {
                try {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  print("Created new Account");

                  // to store the username in a shared preference
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString('email', _emailController.text);
                  prefs.setString('username', _usernameController.text);
                  // ignore: use_build_context_synchronously
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                } catch (error) {
                  print("Error ${error.toString()}");
                }
              },
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 4,
                    color:  Color(0xFF92E3A9),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "or ",
                    style: TextStyle(
                        color:  Color(0xFF92E3A9),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 4,
                    color: Color(0xFF92E3A9),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Google sign in",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),

            // google + apple sign in buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(
                  imagePath: "lib/assets/images/google_logo.png",
                  onTap: () => signWithGoogle(context),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 16,
                        color:  Color(0xFF92E3A9),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void signWithGoogle(BuildContext context) async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print(userCredential.user?.displayName);

      // Navigate the user to the desired page
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),
      );
    } catch (error) {
      print("Error signing in with Google: ${error.toString()}");
    }
  }
}
