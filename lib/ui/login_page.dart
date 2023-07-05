import 'package:emoscope/ui/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:emoscope/ui_components/my_textfield.dart';
import 'package:emoscope/ui_components/square_tile.dart';
import 'package:emoscope/ui/camera_page.dart';
import 'package:emoscope/ui/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../ui_components/my_button.dart';
import 'forgot_password.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Welcome!",
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
                    "Sign in to continue",
                    style: GoogleFonts.roboto(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            MyTextField(
                controller: _emailController,
                hintText: "Enter your registered email",
                obscureText: false),
            const SizedBox(
              height: 50,
            ),
            MyTextField(
                controller: _passwordController,
                hintText: "Enter your password",
                obscureText: true),

            const SizedBox(
              height: 50,
            ),

            // sign in button
            MyButton(onTap: () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text)
                  .then((value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                );
              }).onError((error, stackTrace) {
                print("Error  ${error.toString()}");
              });
            }),

            // forgot password?
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  ForgotPassword())),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
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
                    "or",
                    style: TextStyle(
                        color: Color(0xFF92E3A9),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 4,
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Google Sign in",
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage())),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF92E3A9),
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















//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 height: 50,
//               ),

//               // logo
//               const Icon(
//                 Icons.lock,
//                 size: 100,
//               ),

//               const SizedBox(
//                 height: 50,
//               ),
//               // Welcome back
//               Text(
//                 "Please Enter your credentials to Access the system",
//                 style: TextStyle(color: Colors.grey[700], fontSize: 16),
//               ),

//               const SizedBox(
//                 height: 25,
//               ),

//               // username text
//               MyTextField(
//                 controller: usernameController,
//                 hintText: "Enter your registered username",
//                 obscureText: false,
//               ),

//               const SizedBox(
//                 height: 10,
//               ),

//               // password textfield
//               MyTextField(
//                 controller: passwordController,
//                 hintText: "Enter username here",
//                 obscureText: true,
//               ),

//               // forgot password?
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       "Forgot password?",
//                       style: TextStyle(color: Colors.grey[600]),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(
//                 height: 25,
//               ),

//               // sign in button
//               MyButton(
//                 onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CameraPage())),
//               ), // signInUser()

//               const SizedBox(
//                 height: 50,
//               ),

//               Row(
//                 children: [
//                   Expanded(
//                     child: Divider(
//                       thickness: 3,
//                       color: Colors.grey[400],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Text(
//                       "Or continue with",
//                       style: TextStyle(color: Colors.grey[800]),
//                     ),
//                   ),
//                   Expanded(
//                     child: Divider(
//                       thickness: 3,
//                       color: Colors.grey[400],
//                     ),
//                   )
//                 ],
//               ),

//               const SizedBox(
//                 height: 50,
//               ),

//               // google + apple sign in buttons
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   SquareTile(imagePath: "lib/assets/images/google_logo.png"),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   SquareTile(imagePath: "lib/assets/images/apple_logo1.png")
//                 ],
//               ),

//               const SizedBox(
//                 height: 50,
//               ),

//               // Don't have an account
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Don't have an account?",
//                       style: TextStyle(color: Colors.grey[700])),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   GestureDetector(
//                     onTap: () => Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => SignupPage())),
//                     child: const Text(
//                       "Register now",
//                       style: TextStyle(
//                           color: Colors.blue, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
