import 'package:emoscope/ui/camera_page.dart';
import 'package:emoscope/ui/my_drawer_header.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui_components/my_drawer.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String username = "";
  String email = "";

  @override
  void initState() {
    super.initState();
    getUserandEmail();
  }

  Future<void> getUserandEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? "";
      email = prefs.getString('email') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {

    Color themeColor = const Color(0xFF92E3A9);

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CameraPage(),
            ),
          );
        },
        label: const Text("Detect"),
        backgroundColor: Colors.black87,
        focusColor: Colors.red,
        hoverColor: Colors.blue,
      ),
      appBar: AppBar(
        backgroundColor: themeColor,
        title: Text(
          "Emoscope",
          selectionColor: Colors.green[300],
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: Text(
                      "Welcome ${username}!",
                      style: GoogleFonts.titanOne(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/images/image1.png"),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              height: 110,
              width: 250,
              decoration: BoxDecoration(
                color:themeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Emoscope is a virtual platform, that helps you track your mood and provides strategies and techniques on how to cope with your feelings to improve your emotional well-being",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyDrawerHeader(),
              MyDrawerList(context),
            ],
          ),
        ),
      ),
    );
  }
}
