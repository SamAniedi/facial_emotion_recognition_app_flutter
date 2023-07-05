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
import '../emotions_closing/fear_close.dart';
import 'quotes.dart';
import 'randomstate_pagecolor.dart';

class FearWidget extends StatefulWidget {
  const FearWidget({super.key});

  @override
  State<FearWidget> createState() => _Fear();
}

class _Fear extends State<FearWidget> {
  int randomString2 = Random().nextInt(fear_quotes.length);
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
              MaterialPageRoute(builder: (context) => const FearClose()));
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
                    'Take small steps to overcome your fear.\n',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF92e3a9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.all(10),
                    width: 400,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'There are plenty of things that make us feel afraid. It’s indeed tough when we experience it, to the point that sometimes we get immobilized and blur out, not knowing what to do. We feel fear in response to protecting ourselves from possible threats to our physical and emotional well-being, and that is normal. When it goes haywire, that’s when anxiety attacks occur.',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              elevation: 0,
                              child: Container(
                                width: 300,
                                child: MaterialButton(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  textColor: Colors.white,
                                  splashColor: Colors.greenAccent,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'lib/assets/images/fear1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 300,
                                          color: Colors.black.withOpacity(0.5),
                                          child: Center(
                                            child: Text(
                                              "Worry not because there are some ways to overcome your fear and anxiety.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 10, top: 220),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'More',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                  width:
                                                      0), // Adjust the spacing between the text and icon
                                              Icon(Icons
                                                  .arrow_right_alt_outlined),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: SizedBox(
                                            height: 900,
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Card(
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          color:
                                                              Color(0xFF92e3a9),
                                                          child: Card(
                                                            child: Container(
                                                              height: 600,
                                                              width: 370,
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              10,
                                                                              50,
                                                                              10,
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Identify your fear',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Being able to recognize what you fear is your first step. For at least a few minutes, take a seat and contemplate as you pay attention to your thoughts, feelings, and bodily sensations.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Own the fear',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Faking yourself that you’re not afraid of your fearful thoughts is tough and stressful. Stop trying to look okay even if you’re not, it’s a waste of emotional energy.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Breathe',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '"Take a deep breath." That could probably be annoying to hear when you’re having a fear and anxiety attack, but keep in mind that it’s helpful. Deep and mindful breathing helps you deactivate your body’s stress response and make you calm.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Reassess your situation',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Ask yourself, "How are you feeling now? What would be your next step? Would it be helpful for you to distance yourself from your current situation, or do you need to reach out to someone else?',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Handle your biological needs',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'There’s a possibility that you’re in that situation because of your physiological sensations. Drink a glass of water or eat something. You might be hungry or something.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Challenge your negative thoughts',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Having the time and courage to talk through your fearful thoughts or write out what happened and how you feel could result in a response that would make you feel empowered.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Return to the battleground',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Choose your best course of action once you’ve given yourself some space in your mind. Avoid procrastinating. Instead, try to be proactive, as it improves your self-confidence and sense of control in both current and future stressful situations.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 270),
                                                          color:
                                                              Color(0xFF92e3a9),
                                                          child: Positioned(
                                                            top: 10,
                                                            right: 10,
                                                            child: IconButton(
                                                              icon: Icon(
                                                                  Icons.close),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 10, right: 10),
                                                  child: Text(
                                                    'Fear and anxiety do not just kick in occasionally. Sometimes, some people experience them for different reasons in their daily lives, making them vulnerable physically and emotionally.',
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              elevation: 0,
                              child: Container(
                                width: 300,
                                child: MaterialButton(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  textColor: Colors.white,
                                  splashColor: Colors.greenAccent,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'lib/assets/images/fear2.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 300,
                                          color: Colors.black.withOpacity(0.5),
                                          child: Center(
                                            child: Text(
                                              "If you’re having a hard time dealing with them in your everyday life, or if you’ll encounter them in the future, you could also consider the following techniques to cope with your day-to-day fears and anxieties:",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 10, top: 240),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'More',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                  width:
                                                      0), // Adjust the spacing between the text and icon
                                              Icon(Icons
                                                  .arrow_right_alt_outlined),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: SizedBox(
                                            height: 900,
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Card(
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          color:
                                                              Color(0xFF92e3a9),
                                                          child: Card(
                                                            child: Container(
                                                              height: 600,
                                                              width: 370,
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              10,
                                                                              50,
                                                                              10,
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Take a break',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'It’s challenging to maintain clarity of thought when you are flooded with fear and anxiety. Take your first step by creating space and allowing yourself to physically calm down. For at least fifteen (15) minutes, get yourself distracted—go for a walk or take a bath—anything that calms you down.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Breathe through panic',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'When panic attacks occur, the best thing you can do is not fight them. Feel the panic—stay put and don’t divert your attention elsewhere. Place your hand on your stomach and focus on slow and deep breathing. This is to acclimate your mind to effectively deal with panic, which gradually diminishes your fear.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Face your fear',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Your fear fades when you face it head-on. Stop avoiding them, it makes them scarier.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Envision the worse',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'The more you pursue and confront your fear, the faster it flees. Imagining a worst-case scenario that leads to panic or even a heart attack while visualizing yourself having a heart attack is simply not feasible.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Examine the evidence',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            "Questioning and challenging your fearful thoughts can be beneficial. By examining the evidence and considering more realistic possibilities, your fear’s influence is reduced, and you gain a balanced perspective. For instance, ask yourself if you've ever heard someone suffocate after becoming trapped in an elevator, if you’re afraid of doing so.",
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Avoid stiving for perfection',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Stress and challenges in life are inevitable, yet there is often a tendency to seek perfection. It’s crucial to acknowledge setbacks and difficult days. It’s important to keep in mind that life is messy.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Visualize a happy place',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Take a brief pause, gently shut your eyes, and envision a serene and secure haven. Imagine yourself strolling along a stunning beach, curled up with your lovely cat with you, or a cheerful childhood memory. Allow the uplifting emotions to calm you until you feel more relaxed.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Talk about it',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Expressing and discussing fears with others reduces their scariness. Talk about it with your friends, family, or a helpline.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Return to basics',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'The most effective remedies for fears and anxieties often lie in the basics, like getting good and enough sleep, a decent meal, and a peaceful walk.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      color: Color(
                                                                          0xFF92e3a9),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Acknowledge and reward yourself',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Treat yourself for taking the challenge to conquer your fears and anxieties; you deserve it. Go do and eat anything that makes you happy.',
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 280),
                                                          color:
                                                              Color(0xFF92e3a9),
                                                          child: Positioned(
                                                            top: 10,
                                                            right: 10,
                                                            child: IconButton(
                                                              icon: Icon(
                                                                  Icons.close),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  child: Text(
                                                    'Overcoming your fear involves recognizing and utilizing your response to it to your advantage. Finding your center starts with conquering your fears.',
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              elevation: 0,
                              child: Container(
                                width: 300,
                                child: MaterialButton(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  textColor: Colors.white,
                                  splashColor: Colors.greenAccent,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'lib/assets/images/fear3.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 300,
                                          color: Colors.black.withOpacity(0.5),
                                          child: Center(
                                            child: Text(
                                              "NOT SURE WHEN TO SEEK HELP IN OVERCOMING YOUR FEAR AND ANXIETY?",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 10, top: 205),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'More',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                  width:
                                                      0), // Adjust the spacing between the text and icon
                                              Icon(Icons
                                                  .arrow_right_alt_outlined),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: SizedBox(
                                            height: 900,
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 280),
                                                  child: Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: IconButton(
                                                      icon: Icon(Icons.close),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 5, 10, 10),
                                                  child: Text(
                                                    'Managing your fear and anxiety is sometimes beyond reach. It’s possible that it could turn into maladaptive behavior, which affects your ability to function. If tips and strategies won’t work for you or you feel like it’s too much, then consider contacting a coach or counselor.',
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                ),
                                                Container(
                                                  child: Card(
                                                    elevation: 0.0,
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          child: Card(
                                                            elevation: 0.0,
                                                            child: Container(
                                                              height: 400,
                                                              width: 370,
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              15),
                                                                      child:
                                                                          Text(
                                                                        'Initiate reaching out to mental health professionals for support if you’re experiencing the following:',
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF92e3a9),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Your fear and anxiety feel overwhelming.',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF92e3a9),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'You find it difficult to do your daily tasks.',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF92e3a9),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Your work functionality is disrupted.',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF92e3a9),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'You postpone social or professional commitments due to social anxiety.',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF92e3a9),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'You strategically adjust your actions or schedule your activities to avoid triggers.',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  child: Text(
                                                    'Consult a therapist to help you manage your immediate symptoms. Anxiety is commonly addressed through a combination of medication and cognitive psychotherapy, with the understanding that neither treatment needs to be permanent.',
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                                  Random().nextInt(fear_quotes.length);
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
                                            '${fear_quotes[randomString2]}',
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
