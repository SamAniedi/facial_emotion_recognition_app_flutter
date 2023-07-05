import 'package:emoscope/ui/contact_page.dart';
import 'package:emoscope/ui/dashboard_page.dart';
import 'package:emoscope/ui/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../ui/login_page.dart';

Widget MyDrawerList(BuildContext context) {
  var currentPage = DrawerSections.about;
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        menuItem(context, 1, "Dashboard", Icons.dashboard_outlined,
            currentPage == DrawerSections.dashboard ? true : false),
        menuItem(context, 2, "About", Icons.home,
            currentPage == DrawerSections.dashboard ? true : false),
        menuItem(context, 3, "Contact", Icons.people,
            currentPage == DrawerSections.dashboard ? true : false),
        menuItem(context, 4, "Logout", Icons.logout,
            currentPage == DrawerSections.logout ? true : false),
      ],
    ),
  );
}

Widget menuItem(
    BuildContext context, int id, String title, IconData icon, bool selected) {
  return Material(
    child: InkWell(
      onTap: () {
        if (id == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashboardPage()));
        } else if (id == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WelcomePage()));
        } else if (id == 3) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ContactPage()));
        } else if (id == 4) {
          signOut(context);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

enum DrawerSections { dashboard, about, contact, logout }

void signOut(BuildContext context) {
  FirebaseAuth.instance.signOut().then((_) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false,
    );
  }).catchError((error) {
    print('Error signing out: $error');
  });
}
