// import 'package:flick_video_player/flick_video_player.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:flutter_cool_card_swiper/widgets/cool_swiper.dart';
import '../emotions_closing/happy_close.dart';
import 'quotes.dart';
import 'randomstate_pagecolor.dart';

class HappyWidget extends StatefulWidget {
  const HappyWidget({super.key});

  @override
  State<HappyWidget> createState() => _Happiness();
}

class _Happiness extends State<HappyWidget> {
  int randomString2 = Random().nextInt(happy_quotes.length);
  PageController _pageController = PageController(initialPage: 0);
  List<String> HappyVideoID = [
    'WRXLye2po_4',
    'GcOn7CdAy2E',
    'VtLXhYc06rw',
    'OLE1kAKQWIQ',
    '8vkYJf8DOsc',
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
              MaterialPageRoute(builder: (context) => const HappyClose()));
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
        swipeVelocityThreshold: 1000,
        animationDuration: const Duration(milliseconds: 300),
        builder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              color: pagecolors[index],
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'It’s great to see you in a positive mood. Your happiness is contagious.\n',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Your version of genuine happiness is exceptional, right? How about living a more satisfied and happier life? Have you ever wondered what that feels like? Well, good news! It’s within reach.\n\n',
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Here are daily, weekly, monthly, and yearly habits you might want to try to live your life to the fullest:",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                'Daily',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SingleChildScrollView(
                              padding:
                                  EdgeInsets.only(left: 70, right: 70, top: 15),
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: 'Smile\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Smiling causes our brain to release dopamine, which is responsible for making us happier.\n',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: 'Exercise\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Regular exercises boost self-esteem and happiness because they can help minimize stress, anxiety, and even symptoms of depression—just don’t overexert yourself.\n',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      'Get enough or plenty of sleep\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 15)),
                                              TextSpan(
                                                  text:
                                                      'Sleep is very vital for our physical and mental health, as well as our emotional well-being. Having adequate sleep lowers the possibility of developing chronic conditions like heart disease, diabetes, and depression.',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 13)),
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      'Eat with mood in mind \n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Eating good and healthy food is truly encouraged; consuming the food that you really want or crave has an impact on your overall physical health and can affect your state of mind.',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      'Practice gratitude\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'One possible way to boost your mood is by simply being grateful. Acknowledging that you’re grateful each day and practicing gratitude can have a momentous influence on feelings of hope and happiness.',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      'Try being complimentary\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 17)),
                                              TextSpan(
                                                  text:
                                                      'One good way of boosting your happiness is by brightening someone’s day by giving them sincere compliments. When complimenting their physical appearance, remember to be kind and respectful.',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 13)),
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: 'Breathe deeply\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Based on research, practicing slow and deep breathing helps reduce stress as it calms your body.',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      'Acknowledge unhappy moments\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Being optimistic is often beneficial, however, difficult and unfortunate times are part of our lives—bad things happen to everyone. Recognize these events and let unhappiness slide for a moment, then move forward when you’re ready to heal.',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: 'Keep a journal\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Having a journal is very handy because it helps in planning, organizing your ideas, and analyzing your feelings.',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      'Face your stress head-on\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Life can be very stressful; however, sometimes stress has an upside. Address them head-on and don’t get overwhelmed. You’re stronger than you think.',
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
                                        width: 220,
                                        height: 250,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      'Never compare yourself to others\n\n',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20)),
                                              TextSpan(
                                                  text:
                                                      'Comparing yourself to others only results in lower self-esteem, dissatisfaction, and even depression and anxiety.',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15)),
                                            ]))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
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
                                  Random().nextInt(happy_quotes.length);
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
                                            '${happy_quotes[randomString2]}',
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
              color: pagecolors[index],
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
              child: Column(children: [
                Text(
                  'Weekly',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
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
                            width: 220,
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Decluttering\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'A cluttered surroundings may contribute to a negative mood. Tidying up and having a peaceful and clean environment can help reduce stress and anxiety and increase your productivity.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'See friends\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Having companions share and spending time with them can evoke positive emotions and energy. If, more likely, you’re introverted, friends are not limited to human beings; animals and pets can be your friends too.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Organize your week\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Planning your week in advance helps you increase your productivity. It’s possible to not stick to the plan, but knowing the things to be done or prioritized in the week can quiet your mind.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Limit your screen time\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Frequent and prolonged phone usage can alter your brain function and affect your emotional well-being. Unplug and take a break. For a change, let your mind wander freely.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Touch some grass\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Spending time in nature can refresh our mind and body as it can help reduce stress, lower blood pressure, and reduce the chances of developing depression. Have activities in green spaces and breathe fresh air.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Meditate\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Meditation enhances your well-being. A simple deep breath or sitting calmly and quietly with your own thoughts for a couple of minutes can serve as your meditation.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Consider therapy\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'When you feel like you’re hitting a brick wall and need help coping with your situation, consider seeking out mental health professionals. They will assist you in improving your coping skills.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 270,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Find a self-care ritual\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Develop a personal routine or activity that promotes your mental, emotional, and physical well-being. It helps you get refreshed and rejuvenated. Examples are taking a warm bath, reading a book, meditating, etc.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                    'Monthly',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
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
                            width: 220,
                            height: 220,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Take yourself out\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Go and treat yourself, you deserve it. Watch some movies, eat at your favorite restaurant, or go on a trip you’ve dreamed of.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
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
                            height: 220,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Create a thought list\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20)),
                                  TextSpan(
                                      text:
                                          'Create a brief list of joyful memories or upcoming events that excite you. Jot them down on a small piece of paper or simply on your phone.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                ]))),
                          ),
                        ),
                      ),
                    ],
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
              ]),
            );
          } else {
            return Container(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: Text(
                    "Videos for you",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, top: 10, bottom: 5, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200.0,
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          itemCount: HappyVideoID.length,
                          itemBuilder: (BuildContext context, int index) {
                            String currentVideoId = HappyVideoID[index];
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
                              child:
                                  YoutubePlayer(controller: currentController),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          HappyVideoID.length,
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
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Yearly',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
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
                            width: 220,
                            height: 260,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Take time to reflect\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17)),
                                  TextSpan(
                                      text:
                                          'Allocate some time to reconnect or catch up with yourself as you would with a longtime friend. Ask yourself: How are you doing? Are you happier than last year? Self-check-in gives you an insight into how to manage your stress and prevent burnout. However, refrain from judging yourself too harshly for your answers.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
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
                            height: 260,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          'Take a fresh look at your goals\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17)),
                                  TextSpan(
                                      text:
                                          'Reevaluating your goals helps you refocus your energy and resources on what truly matters to you and redirects you to what you really love. People change, get rid of the objectives that are not beneficial to you anymore, even if they may appear appealing on paper.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
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
                            height: 260,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Take good care of yourself\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17)),
                                  TextSpan(
                                      text:
                                          'Your physical and mental well-being are interconnected. Get yourself checked by professionals: dentists, physicians, healthcare professionals, optometrists, etc.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
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
                            height: 260,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Release any resentments\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17)),
                                  TextSpan(
                                      text:
                                          'Letting go of grudges is an act of self-care rather than solely an act of compassion for others. It’s not necessary that you reconcile; you’ll just have to end the relationship and move on.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
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
                            height: 260,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Plan a Trip\n\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17)),
                                  TextSpan(
                                      text:
                                          'Research supports that taking that much-needed vacation benefits your mental and physical health. You did well on your hectic schedule, you deserve a time-off.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
                                ]))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Everyone is in search of how to live a happy life--when in reality, the search begins with you. Happiness is not "found." It is realized.\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ));
          }
        },
      ),
    );
  }
}
