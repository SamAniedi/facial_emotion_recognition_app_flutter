import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../emotions_closing/surprise_close.dart';
import 'constrants.dart';
import 'data.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_cool_card_swiper/widgets/cool_swiper.dart';
import 'quotes.dart';
import 'randomstate_pagecolor.dart';

class SurpriseWidget extends StatefulWidget {
  const SurpriseWidget({super.key});

  @override
  State<SurpriseWidget> createState() => _Surprise();
}

class _Surprise extends State<SurpriseWidget> {
  int randomString2 = Random().nextInt(surprise_quotes.length);
  PageController _pageController = PageController(initialPage: 0);
  List<String> SurpriseVideoID = [
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
    List<Color> surprise_pagecolors = surprise_pagecolor(context);

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
              MaterialPageRoute(builder: (context) => const SurpriseClose()));
        },
        label: const Text("Next"),
        backgroundColor: Colors.black,
        focusColor: Colors.red,
        hoverColor: Colors.blue,
        icon: const Icon(Icons.skip_next),
      ),
      body: TikTokStyleFullPageScroller(
          contentSize: surprise_pagecolors.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 1000,
          animationDuration: const Duration(milliseconds: 300),
          builder: (BuildContext context, int index) {
            if (index == 0) {
              return Container(
                  color: surprise_pagecolors[index],
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Take a moment and process what just happened.\n',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                                height:
                                    3), // add some spacing between the two Text widgets
                            Text(
                              'SURPRISES HAPPEN. Life is full shocking events and unforeseen turns. Unexpected situations can come anytime in anyone’s life. Some are pleasant, and some are not. Winds of change always come, how you deal with it is the deciding factor of the outcome.',
                              style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
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
                                      width: MediaQuery.of(context).size.width,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'lib/assets/images/surprise.jpg'),
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
                                            "Here are some tips for you to deal with surprises and unexpected event:",
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
                                            SingleChildScrollView(
                                              padding: EdgeInsets.only(
                                                  left: 35,
                                                  right: 35,
                                                  top: 120),
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Recognize and accept that life surprises do happen, and you can’t avoid them\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'Life is dynamic, it’s not static. To some extent, it is easier to deal with these events if you embrace that change is part of our lives.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Your attitude is the key\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'The strong point in dealing unexpected events is a positive attitude—be optimistic. Sometimes, what appears to be a catastrophe may actually turn out to be a blessing in disguise. A bad experience can arouse desire, motivation, and persistence which would result to progress and success.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Always have a Plan B\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'In planning, it is essential to have a backup plan for you to know what to do next and avoid feeling helpless and afraid when the first plan fails.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Wait for a moment before speaking\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'Look at what happened and assimilate the news before getting angry or anxious. Perhaps this is just a minor and temporary issue that is simple to handle.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'As much as possible, prevent in getting angry, stressed, and panicked\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'You will gain nothing for doing so. Instead, it would be a lot more beneficial to think constructively about where are you going from there. Consider how to deal with the new circumstance and either fix it, improve it, or make most out of it.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Have the initiative to make little adjustments in your life\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'It will be easier for you to deal with surprises and uncontrollable events, and at the same time, you will develop the ability to accept change when you do things differently occasionally in small and unimportant situations without giving them much thought—do things you usually do, but in a different way.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Always focus on the present, make the most out if by doing your best to live it, learn as much as you can from it, and take advantage of new opportunities that come your way\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              23)),
                                                                  TextSpan(
                                                                      text:
                                                                          'It will be easier for you to deal with surprises and uncontrollable events, and at the same time, you will develop the ability to accept change when you do things differently occasionally in small and unimportant situations without giving them much thought—do things you usually do, but in a different way.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              18)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Learn the importance of emotional detachment\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'It enables you to stand aside from issues, shocks, and anticipated occurrences in order to be less influenced by them. This puts you in a better position to handle whatever is happening in your life by making it simpler for you to keep your composure and sense of self-control. Too much attachment makes it easier for bad surprises and events to have a more damaging impact on you.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              18)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Build a solid foundation of inner strength\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'Stability and improved mental and behavioral control are brought about by an inner state of strength, enabling you to cope with the situation. Achieve these by developing your willpower and self-discipline.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                      child: Container(
                                                        color:
                                                            Color(0xFF92e3a9),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 350,
                                                        height: 450,
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Learn and practice meditation\n\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w900,
                                                                          fontSize:
                                                                              30)),
                                                                  TextSpan(
                                                                      text:
                                                                          'At least ten (10) minutes a day of meditation can significantly improve your life by becoming more at ease, easygoing, and unaffected by the happenings around you.\n',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              20)),
                                                                ]))),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 20),
                                              child: Text(
                                                'Note that to be able to use the last three (3) tips, you need some training.',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 25),
                                              ),
                                            )
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
                                      Random().nextInt(surprise_quotes.length);
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
                                                '${surprise_quotes[randomString2]}',
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
                  ));
            } else {
              return Container(
                color: surprise_pagecolors[index],
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
                child: Column(
                  children: [
                    Text(
                      'Even though you have a consistent lifestyle and engage in the same routine behaviors every day, unforeseen incidents may still occur. Unexpected events come in many forms. Some have the potential to change your life while others are a change of plans. So it makes sense to be ready for such occurrences. Practice patience, be prepared, and choose to handle the unexpected situation gracefully.',
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Videos for you",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200.0,
                            child: PageView.builder(
                              scrollDirection: Axis.horizontal,
                              controller: _pageController,
                              itemCount: SurpriseVideoID.length,
                              itemBuilder: (BuildContext context, int index) {
                                String currentVideoId = SurpriseVideoID[index];
                                YoutubePlayerController currentController =
                                    YoutubePlayerController(
                                  initialVideoId: currentVideoId,
                                  flags: YoutubePlayerFlags(
                                    disableDragSeek: true,
                                    autoPlay: false,
                                    mute: false,
                                  ),
                                );
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
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
                              SurpriseVideoID.length,
                              (index) => Container(
                                width: 10,
                                height: 10,
                                margin: EdgeInsets.symmetric(horizontal: 4),
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
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        'Additionally, if you feel like you need support from other, never hesitate to ask for help, whether it be family, friends, or professionals. They can provide comfort and guidance during difficult times.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          color: Color(0xFF92e3a9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Fun Fact about Surprised Emotion:\n',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  'Surprise is the briefest of all the emotions, lasting a few seconds at most. Other emotions can be very brief, but they can also endure much longer, whereas surprise has a fixed, limited duration.\n\n',
                                  style: const TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }
}
