// import 'package:flick_video_player/flick_video_player.dart';
import 'dart:math';

import 'package:emoscope/ui/emotions_closing/angry_close.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'constrants.dart';
import 'data.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_cool_card_swiper/widgets/cool_swiper.dart';
import 'quotes.dart';
import 'randomstate_pagecolor.dart';

class AngryWidget extends StatefulWidget {
  const AngryWidget({super.key});

  @override
  State<AngryWidget> createState() => _Angry();
}

class _Angry extends State<AngryWidget> {
  int randomString2 = Random().nextInt(angry_quotes.length);
  PageController _pageController = PageController(initialPage: 0);
  List<String> AngryVideoID = [
    '9I77T7ndnSM',
    'iiMW4dong-Y',
    '9hTVd9TDr9c',
    'TABWFDzI8Tc',
    'WbQNUcFA5AE',
  ];
  String initialVideoId = '';
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (next != _currentIndex) {
        setState(() {
          _currentIndex = next;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> angry_pagecolors = angry_pagecolor(context);

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: initialVideoId,
      flags: const YoutubePlayerFlags(
        disableDragSeek: true,
        autoPlay: false,
        mute: false,
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AngryClose()));
        },
        label: const Text("Next"),
        backgroundColor: Colors.black,
        focusColor: Colors.red,
        hoverColor: Colors.blue,
        icon: const Icon(Icons.skip_next),
      ),
      body: TikTokStyleFullPageScroller(
          contentSize: angry_pagecolors.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 1000,
          animationDuration: const Duration(milliseconds: 300),
          builder: (BuildContext context, int index) {
            if (index == 0) {
              return Container(
                color: angry_pagecolors[index],
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        padding:
                            const EdgeInsets.only(top: 60, left: 30, right: 30),
                        child: Text(
                          'Take a deep breath. What you feel is valid and I care about you.',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        '“Are you open for advice?”',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Text(
                        'If YES, you could use these suggestions to handle what you’re feeling right now.',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(left: 70, right: 70, top: 5),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Compose yourself: taking big and deep breaths and drinking water help you have a calm presence and clear your mind.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Acknowledge your anger; you’re angry for a reason, so what you feel is valid.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Identify what triggered you. Knowing what made you angry can help you think of ways to tame your emotion.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Express your anger safely and in private. Punching a pillow or screaming at a tree, a car, or any object can help you release the heat of your emotion. By doing so, you won’t hurt yourself or someone else.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Give yourself a space; trying to be alone could help you calm down and think.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Cry: if you feel like you want to cry it out, let it out.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Set boundaries. Be clear and vocal about the things that are and aren’t acceptable to you, and what actions you’re taking when someone crosses the line.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 220,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Talk to someone you trust and who’s willing to listen; venting to someone could really help escalate the situation.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                      child: Text(
                        'Feeling angry is sometimes overwhelming. However, always remember to not let your emotions take over and control the situation. You’re stronger than your emotions; you’ll get through this.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
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
                                    Random().nextInt(angry_quotes.length);
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
                                                15, 100, 15, 20),
                                            child: Text(
                                              '${angry_quotes[randomString2]}',
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
                    Flexible(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        // color: Colors.grey,
                        child: Container(
                          width: 250,
                          child: ListTile(
                            leading: Image.asset(
                              alignment: Alignment.center,
                              'lib/assets/images/down.png',
                              scale: 15,
                            ),
                            title: Text(
                              "Scroll down for more",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            } else if (index == 1) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 60),
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
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/angry1.jpg'),
                                          fit: BoxFit.cover),
                                    )),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 7),
                                    color: Color(0xFF92e3a9),
                                    child: Column(children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 10, 5, 10),
                                        child: Center(
                                            child: Text(
                                          "Relaxation is very vital to help diffuse your anger and put things in perspective. Here are some activities that could help you relax:",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20),
                                        )),
                                      ),
                                    ])),
                                Container(
                                  padding: EdgeInsets.only(bottom: 10),
                                  color: Color(0xFF92e3a9),
                                  width: 500,
                                  child: Text(
                                    "Click for more",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 900,
                                      child: Column(
                                        children: [
                                          SingleChildScrollView(
                                            padding: EdgeInsets.only(
                                                left: 35, right: 35, top: 150),
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                  child: Card(
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    child: Container(
                                                      color: Color(0xFF92e3a9),
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      width: 350,
                                                      height: 350,
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Go for a walk or sit quietly in a park.\n\n',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontSize:
                                                                            50)),
                                                              ]))),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                  child: Card(
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    child: Container(
                                                      color: Color(0xFF92e3a9),
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      width: 350,
                                                      height: 350,
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Listen to the music you passionately like.\n\n',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontSize:
                                                                            50)),
                                                              ]))),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                  child: Card(
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    child: Container(
                                                      color: Color(0xFF92e3a9),
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      width: 350,
                                                      height: 350,
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Read books or watch movies and videos.\n\n',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontSize:
                                                                            50)),
                                                              ]))),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                  child: Card(
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    child: Container(
                                                      color: Color(0xFF92e3a9),
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      width: 350,
                                                      height: 350,
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Play your favorite physical activity or sport.\n\n',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontSize:
                                                                            50)),
                                                              ]))),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                  child: Card(
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    child: Container(
                                                      color: Color(0xFF92e3a9),
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      width: 350,
                                                      height: 350,
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Take a bath.\n\n',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontSize:
                                                                            50)),
                                                              ]))),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                  child: Card(
                                                    clipBehavior: Clip.hardEdge,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    child: Container(
                                                      color: Color(0xFF92e3a9),
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      width: 350,
                                                      height: 350,
                                                      child: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Do some yoga and meditation.\n\n',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontSize:
                                                                            50)),
                                                              ]))),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                    Container(
                      height: 180,
                      padding: EdgeInsets.only(left: 15, right: 15, top: 50),
                      child: Text(
                        ' Accept and understand that some things are out of our control.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 25),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                          child: CoolSwiper(
                            children: List.generate(
                              Data.angry_colors.length,
                              (index) => Container(
                                height: Constants.cardHeight,
                                decoration: BoxDecoration(
                                  color: Data.angry_colors[index],
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 380,
                                              height: 180,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 15),
                                              child: Text(
                                                Data.angry_texts[index],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        // color: Colors.grey,
                        child: Container(
                          width: 250,
                          child: ListTile(
                            leading: Image.asset(
                              alignment: Alignment.center,
                              'lib/assets/images/down.png',
                              scale: 15,
                            ),
                            title: Text(
                              "Scroll down for more",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 60, 15, 10),
                      child: Text(
                        'Do you want some tips for managing your anger next time?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'If YES, here are you go.',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(left: 70, right: 70, top: 15),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Before you speak, think—you don’t want to say anything that you may regret afterwards when you’re emotionally charged. Give yourself some time to think and collect your thoughts prior to saying something.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "Express your concerns once you’re calm. After you've made your mind clear, you can express your distress in a positive and pleasant way. It’s possible to articulate your concerns and necessities in a positive and pleasant way.\n\n",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "Exercise: exhausting yourself with physical activities can help you handle the stress that causes you to be angry. Go for a walk or run, or any physical activity you enjoy, if you feel like your anger is escalating.\n\n",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "Take a break; you deserve to take a timeout. It’s good and healthy to give yourself small breaks when the atmosphere of the day is getting stressful.\n\n",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "Spot potential solutions; focus more on what could resolve the issue at hand instead of what made you angry.\n\n",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Stick with "I" statements; using the "I" statement is essential in describing the problem. Be respectful and specific in expressing your concerns.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Never hold a grudge; never allow negative feelings to swallow you. Forgiving someone might help you learn from the situation and prevent bitterness and a sense of injustice.\n\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Releasing tension through humor: using humor can help lighten up the atmosphere and diffuse tension. Just remember not to use sarcasm because it can hurt someone or, probably, make the situation worse.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Carry out relaxation skills—do the things that encourage you to be relaxed. You can find the activities you can do to help you relax in the previous article.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                color: Color(0xFF92e3a9),
                                padding: EdgeInsets.all(10),
                                width: 280,
                                height: 250,
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Know when to seek help. Seek help from professionals if you’re having a hard time managing your anger issues. Indeed, it’s challenging at times to learn to control your emotions.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18)),
                                    ]))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'FUN FACT ABOUT ANGER:',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Text(
                        'Anger is a reaction of the sympathetic nervous system and is associated with the terms "fight, flight, or freeze" that draw humans to fight—not necessarily mean fighting like throwing punches. It can encourage communities to combat injustice by changing laws or enforcing new norms.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 23, fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                ),
              );
            }
          }),
    );
  }
}
