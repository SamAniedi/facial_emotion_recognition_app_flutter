import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../emotions_closing/sad_close.dart';
import 'constrants.dart';
import 'data.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_cool_card_swiper/widgets/cool_swiper.dart';
import 'quotes.dart';
import 'randomstate_pagecolor.dart';

class SadWidget extends StatefulWidget {
  const SadWidget({super.key});

  @override
  State<SadWidget> createState() => _Sadness();
}

class _Sadness extends State<SadWidget> {
  int randomString2 = Random().nextInt(sad_quotes.length);
  PageController _pageController = PageController(initialPage: 0);
  List<String> SadVideoID = [
    '4YVOD6XId04',
    'HwLK9dBQn0g',
    'iz0yM5YoIow',
    'XLBKy7g3yTc',
    'ZebSXPUCPFc',
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
    for (var index = 0; index < SadVideoID.length; index++) {
      String currentVideoId = SadVideoID[index];
      YoutubePlayerController currentController = YoutubePlayerController(
        initialVideoId: currentVideoId,
        flags: YoutubePlayerFlags(
          disableDragSeek: true,
          autoPlay: false,
          mute: false,
        ),
      );
      currentController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int randomString = Random().nextInt(sadsecond_opening.length);
    List<Color> pagecolors = pagecolor(context);

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
                MaterialPageRoute(builder: (context) => const SadClose()));
          },
          label: const Text("Next"),
          backgroundColor: Colors.black,
          focusColor: Colors.red,
          hoverColor: Colors.blue,
          icon: const Icon(Icons.skip_next),
        ),
        body: TikTokStyleFullPageScroller(
            contentSize: pagecolors.length,
            swipePositionThreshold: 0.2,
            // ^ the fraction of the screen needed to scroll
            swipeVelocityThreshold: 1000,
            // ^ the velocity threshold for smaller scrolls
            animationDuration: const Duration(milliseconds: 300),
            // ^ how long the animation will take
            builder: (BuildContext context, int index) {
              if (index == 0) {
                return Container(
                  color: pagecolors[index],
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.grey,
                        alignment: Alignment.center,
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 70, left: 30, right: 30),
                          child: Text(
                            '${sadsecond_opening[randomString]}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
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
                                      height: 270,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'lib/assets/images/sadness1.2.jpg'),
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
                                            "YOU FEEL SAD FOR MANY POSSIBLE REASONS, and the following could be one of the reasons:",
                                            textAlign: TextAlign.left,
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
                                            Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  15, 80, 15, 20),
                                              child: Text(
                                                "YOU FEEL SAD FOR MANY POSSIBLE REASONS, and the following could be one of the reasons:",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Card(
                                              elevation: 3,
                                              child: Container(
                                                padding: EdgeInsets.all(20),
                                                alignment: Alignment.topCenter,
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 5,
                                                              child: Text(
                                                                "Having trouble at home (family problems or domestic violence).",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ))
                                                        ],
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 5,
                                                              child: Text(
                                                                "Having a hard time or feeling pressured at school or work.",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ))
                                                        ],
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 5,
                                                              child: Text(
                                                                "Moving home.",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ))
                                                        ],
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 5,
                                                              child: Text(
                                                                "Losing a loved one or a friend.",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ))
                                                        ],
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 5,
                                                              child: Text(
                                                                "Being ill or caring for someone who is ill.",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ))
                                                        ],
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 5,
                                                              child: Text(
                                                                "Experiencing chemical changes in your body (puberty, drugs, or medicine).",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ))
                                                        ],
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              flex: 5,
                                                              child: Text(
                                                                "Experiencing changes in your thoughts.",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20),
                                                              ))
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                height: 500,
                                                width: 370,
                                                color: Color(0xFF92e3a9),
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
                        fit: FlexFit.tight,
                        child: Container(
                          // color: Colors.red,
                          padding: EdgeInsets.fromLTRB(25, 15, 25, 5),
                          child: Text(
                            "Experiencing any of these circumstances may give you a different perception of sadness, and sometimes it can worsen your feelings.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 25),
                          ),
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
                                    padding:
                                        EdgeInsets.only(bottom: 10, top: 10),
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
                                      Random().nextInt(sad_quotes.length);
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
                                                '${sad_quotes[randomString2]}',
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
              } else if (index == 1) {
                return Container(
                    // padding: EdgeInsets.fromLTRB(20, 40, 20, 100),
                    color: pagecolors[index],
                    alignment: Alignment.topCenter,
                    height: MediaQuery.of(context).size.height,
                    child: Column(children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 60),
                              child: Text(
                                "Videos for you",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10, bottom: 5, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 200.0,
                                    child: PageView.builder(
                                      scrollDirection: Axis.horizontal,
                                      controller: _pageController,
                                      itemCount: SadVideoID.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        String currentVideoId =
                                            SadVideoID[index];
                                        YoutubePlayerController
                                            currentController =
                                            YoutubePlayerController(
                                          initialVideoId: currentVideoId,
                                          flags: YoutubePlayerFlags(
                                            disableDragSeek: true,
                                            autoPlay: false,
                                            mute: false,
                                          ),
                                        );
                                        return Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          width: 370.0,
                                          child: YoutubePlayer(
                                              controller: currentController),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      SadVideoID.length,
                                      (index) => Container(
                                        width: 10,
                                        height: 10,
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: _currentIndex == index
                                              ? Colors.black
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: MaterialButton(
                            elevation: 0,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              clipBehavior: Clip.hardEdge,
                              elevation: 5,
                              child: Wrap(children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/sadness2.jpg'),
                                          fit: BoxFit.cover),
                                    )),
                                Container(
                                    constraints: BoxConstraints(minHeight: 100),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 7),
                                    color: Color(0xFF92e3a9),
                                    child: Column(children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 5, 5),
                                        child: Center(
                                            child: Text(
                                          "When the world feels against you and sadness lingers, try this new approach to cope.",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
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
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 70, 15, 20),
                                            child: Text(
                                              "When you feel like the world is turning against you and question yourself about why your sadness is lingering so long, try a different approach to dealing with your sadness.",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          Card(
                                            elevation: 3,
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 30, 10, 10),
                                              alignment: Alignment.topCenter,
                                              child: SingleChildScrollView(
                                                child: Wrap(
                                                  runSpacing: 20,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Icon(Icons
                                                                .notification_add)),
                                                        Expanded(
                                                            flex: 5,
                                                            child: Text(
                                                                "Acknowledge your sadness and what’s happening—you are sad for a reason, and never invalidate it. It’s okay to not feel okay and always remember that you are not alone."))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Icon(
                                                                Icons.cloud)),
                                                        Expanded(
                                                            flex: 5,
                                                            child: Text(
                                                                "Think that it will pass overtime."))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Icon(
                                                                Icons.timer)),
                                                        Expanded(
                                                            flex: 5,
                                                            child: Text(
                                                                "Have time to heal and prioritize taking care of yourself."))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Icon(Icons
                                                                .self_improvement)),
                                                        Expanded(
                                                            flex: 5,
                                                            child: Text(
                                                                "Give yourself time to deal with any of your problems."))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Icon(
                                                                Icons.help)),
                                                        Expanded(
                                                            flex: 5,
                                                            child: Text(
                                                                "Never hesitate to ask for help (from friends and family, a psychologist, or other health professional)."))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 350,
                                              width: 370,
                                              color: Color(0xFF92e3a9),
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
                      Container(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Column(
                            children: [
                              Text(
                                "BELIEVE THAT YOUR SADNESS WILL EASE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              Text(
                                "Recognizing that you are sad and accepting that it is perfectly normal to be sad is a SIGN OF A STABLE SENSE OF WELLBEING. It’s true that sometimes, it’s difficult to escape from the bubble of your sadness, so having the courage to take steps to feel better is amazing. ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          alignment: Alignment.bottomCenter,
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
                    ]));
              } else {
                return Container(
                    color: pagecolors[index],
                    alignment: Alignment.topCenter,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 60),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: 20, left: 15, right: 15),
                                child: Text(
                                  "Here’s some suggestions to cope with your sadness:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SingleChildScrollView(
                                padding: EdgeInsets.only(left: 50, right: 50),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      child: Card(
                                        clipBehavior: Clip.hardEdge,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.all(10),
                                          width: 320,
                                          height: 220,
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        'Always consider your physical and emotional needs.\n\n',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20)),
                                                TextSpan(
                                                    text:
                                                        '- Get good and enough sleep; stay hydrated; and eat healthy food.\n\n',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15)),
                                                TextSpan(
                                                    text:
                                                        '- Don’t overwork yourself, ensure that you have enough leisure time.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15))
                                              ]))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Card(
                                        clipBehavior: Clip.hardEdge,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.all(10),
                                          width: 320,
                                          height: 220,
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        'Cry — if you want to cry, let your tears flow. It’s profoundly cathartic and beneficial. It helps you lessen your heavy feelings and gives you clarity about the cause of your sadness.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20))
                                              ]))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Card(
                                        clipBehavior: Clip.hardEdge,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.all(10),
                                          width: 320,
                                          height: 220,
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        'Give it some time—be patient. Time could be enough to relieve your sadness.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20))
                                              ]))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Card(
                                        clipBehavior: Clip.hardEdge,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.all(10),
                                          width: 320,
                                          height: 220,
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        'With time and effort, trust yourself that your sadness will lessen or fade away. Be confident that things will be okay and will improve.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20))
                                              ]))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Card(
                                        clipBehavior: Clip.hardEdge,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.all(10),
                                          width: 320,
                                          height: 220,
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        'Do things that you enjoy and that are good for you, such as:\n\n',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20)),
                                                TextSpan(
                                                    text:
                                                        '- Listen to music.\n- Go for a walk, jogging, or biking.\n- Work out and play sports.\n- Dance or sing.\n- Read a book.\n- Watch your favorite movies or shows.\n- Go for sightseeing, such as watching the sunset and etc.\n- Play with your pets.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15)),
                                              ]))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Card(
                                        clipBehavior: Clip.hardEdge,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.all(10),
                                          width: 320,
                                          height: 220,
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        'Connecting with your loved ones and friends.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20))
                                              ]))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Card(
                                        clipBehavior: Clip.hardEdge,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.all(10),
                                          width: 320,
                                          height: 220,
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        'Keep yourself safe—never hurt yourself. If you’ve thought about it, let someone know immediately.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontSize: 20))
                                              ]))),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.justify,
                                  "If you feel your sadness is overwhelming and you’re having a hard time dealing with it, consult and seek help from a professional such as doctors and psychologists. You may need support, advice, or a referral to a specialist.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  textAlign: TextAlign.center,
                                  "TRIVIA AND FACTS ABOUT SADNESS:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 40),
                              child: CoolSwiper(
                                children: List.generate(
                                  Data.colors.length,
                                  (index) => Container(
                                    height: Constants.cardHeight,
                                    decoration: BoxDecoration(
                                      color: Data.colors[index],
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                                                      horizontal: 20,
                                                      vertical: 15),
                                                  child: Text(
                                                    Data.texts[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 14,
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
                      ],
                    ));
              }
            }));
  }
}
