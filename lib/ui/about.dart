import 'package:emoscope/ui/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

import 'emotions_ui/randomstate_pagecolor.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> surprise_pagecolors = surprise_pagecolor(context);

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
      body: TikTokStyleFullPageScroller(
          contentSize: surprise_pagecolors.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 1000,
          animationDuration: const Duration(milliseconds: 300),
          builder: (BuildContext context, int index) {
            if (index == 0) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 60),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Sorry to hear that. Consulting a counselor or a mental health professionals is encouraged to support you with your emotion well-being.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "If you're a student of the University of Northern Philippines, you can get help at the University Guidance and Counseling Services Office.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/unp_logo.png', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'UNP Guidance and Counseling Services and Information and Orientation Services',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/unpgcsios',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '0945 246 9867',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'gcishds@unp.edu.ph',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(height: 30),
                    Text(
                      'Other Emotional Support Organizations',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/hopeline_logo.jpg', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hopeline PH',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/HopelinePH/',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '0917 558 4673',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'ngfoundation@gmail.com',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/CrisisLine_Logo.png', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'In Touch: Crisis Line',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/InTouchCrisisLine/',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '0917 800 1123',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'helpline@in-touch.org',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/ncmh_logo.jpg', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NCMH Crisis Hotline',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/ncmhcrisishotline/',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '0917 899 8727',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'crisishotline@ncmh.gov.ph',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              );
            } else {
              return Container(
                child: Column(
                  children: [
                    SizedBox(height: 80),
                    Text(
                      'International Emotional Support Organizations',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/nami_logo.jpeg', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nami - National Alliance on Mental Illness',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/NAMI',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '+1 703-524-7600',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'helpline@nami.org',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(height: 25),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/cssn_logo.jpeg', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Crisis Support Services of Nevada',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/crisissupportservicesnv/',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '988',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'info@cssnv.org',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                    SizedBox(height: 25),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/samhsa_logo.jpeg', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SAMHSA',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/samhsa/',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '+1 877-726-4727',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'SAMHSAInfo@samhsa.hhs.gov',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: 25),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'lib/assets/images/teenline_logo.jpeg', // Replace with your image path
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Teen Line',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'https://www.facebook.com/teenlineonline/',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                '800-852-8336',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'responders@in-touch.org',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              );
            }
          }),
    );
  }
}
