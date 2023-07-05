import 'dart:math';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:flutter_cool_card_swiper/widgets/cool_swiper.dart';
import '../emotions_closing/disgust_close.dart';
import 'quotes.dart';
import 'randomstate_pagecolor.dart';

class DisgustWidget extends StatefulWidget {
  const DisgustWidget({super.key});

  @override
  State<DisgustWidget> createState() => _Disgust();
}

class _Disgust extends State<DisgustWidget> {
  int randomString2 = Random().nextInt(disgust_quotes.length);
  PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> fear_pagecolors = fear_pagecolor(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DisgustClose()));
        },
        label: const Text("Next"),
        backgroundColor: Colors.black,
        focusColor: Colors.red,
        hoverColor: Colors.blue,
        icon: const Icon(Icons.skip_next),
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: fear_pagecolors.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 1000,
        animationDuration: const Duration(milliseconds: 300),
        builder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              color: fear_pagecolors[index],
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
              child: Column(
                children: [
                  Text(
                    'Take your time to process your feelings. Your well-being comes first.\n',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      'The feeling of disgust serves the purpose of safeguarding us by keeping us away from substances and situations that may pose health risks. Disgust is a common aspect of everyday life, but for certain individuals, it can lead to significant distress and disruptions that become a notable issue.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          child: Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Container(
                                height: 300,
                                width: 300,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/disgust1.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 300,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(
                                        child: Text(
                                          "There’s one simple way for you to deal with your emotion.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'lib/assets/images/disgust1.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 10, 20, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'ACCEPT THE THINGS YOU DISLIKE.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Container(
                                                    padding: EdgeInsets.all(15),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF92e3a9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Text(
                                                      'Embracing things we find unpleasant can help reduce stress when we encounter them. It primarily involves refraining from resisting the sensations and urges that arise from it, which typically lead to avoidance behaviors. With practice, it is possible to develop the ability to allow the feeling of disgust to exist without pushing it away.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Unlike other difficult emotions, disgust doesn't require much thinking.",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ]),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          child: Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Container(
                                height: 300,
                                width: 300,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/disgust2.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 300,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(
                                        child: Text(
                                          "Additional tips for managing disgust:",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'lib/assets/images/disgust2.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 20, 20, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'DEEP BREATHING AND MINDFULNESS TECHNIQUES.',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  ),
                                                  SizedBox(height: 15),
                                                  Container(
                                                    padding: EdgeInsets.all(15),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF92e3a9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Text(
                                                      "Like any other emotion, disgust can be partially addressed and managed by utilizing deep breathing and mindfulness techniques. These practices enhance an individual's ability to remain present and effectively regulate their reactions, gradually cultivating more mature responses to disgust over time.",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ]),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          child: Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Container(
                                height: 300,
                                width: 300,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/disgust3.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 300,
                                      color: Colors.black.withOpacity(0.5),
                                      child: Center(
                                        child: Text(
                                          "Disgust emotion is getting out of control?",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'lib/assets/images/disgust3.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Column(children: [
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 20, 20, 0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(15),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF92e3a9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Text(
                                                      "If your emotion becomes problematic as it hinders your ability to live a normal life, then it is recommended that you take therapy. Cognitive Behavioral Therapy (CBT) and Exposure Therapy are successful techniques for lessening the influence of disgust and mitigating related psychological and physical symptoms. These therapeutic approaches specifically focus on addressing underlying conditions like anxiety disorders and obsessive-compulsive disorders.",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ]),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ])),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Card(
                        elevation: 0,
                        child: MaterialButton(
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 0,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10, top: 10),
                                color: Color(0xFF92e3a9),
                                width: 500,
                                child: Text(
                                  "Click for quotes",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                          ),
                          onPressed: () {
                            setState(() {
                              randomString2 =
                                  Random().nextInt(disgust_quotes.length);
                            });
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 900,
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(
                                              15, 70, 15, 20),
                                          child: Text(
                                            '${disgust_quotes[randomString2]}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
