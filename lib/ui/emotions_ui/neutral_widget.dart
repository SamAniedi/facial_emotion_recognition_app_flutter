import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../emotions_closing/neutral_close.dart';
import 'constrants.dart';
import 'data.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_cool_card_swiper/widgets/cool_swiper.dart';
import 'quotes.dart';
import 'randomstate_pagecolor.dart';

class NeutralWidget extends StatefulWidget {
  const NeutralWidget({super.key});

  @override
  State<NeutralWidget> createState() => _Neutral();
}

class _Neutral extends State<NeutralWidget> {
  int randomString2 = Random().nextInt(neutral_quotes.length);
  PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> neutral_pagecolors = neutral_pagecolor(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NeutralClose()));
        },
        label: const Text("Next"),
        backgroundColor: Colors.black,
        focusColor: Colors.red,
        hoverColor: Colors.blue,
        icon: const Icon(Icons.skip_next),
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: neutral_pagecolors.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 1000,
        animationDuration: const Duration(milliseconds: 300),
        builder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              color: neutral_pagecolors[index],
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
              child: Column(
                children: [
                  Text(
                    'Sometimes, we really encounter ourselves as neither sad nor happy, and that’s totally fine.\n',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xFF92e3a9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 300,
                          width: 300,
                          child: Text(
                            'Feeling neutral lies between pleasant and painful feelings. You don’t feel any pleasure or enjoyment, and you don’t feel hurt either. You just feel neutral, and that’s okay.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xFF92e3a9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 300,
                          height: 300,
                          child: Text(
                            'Sometimes, feeling in between brings calmness, contentment, and emotional stability. Knowing that you’re not happy or sad tells you to not worry about bad things that might happen next when you feel happy, or you should exert efforts to shift your emotions into positive when you feel sad.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(children: [
                      Text(
                        'Fun fact about feeling neutral?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'From neutral, we can do anything.',
                        style: GoogleFonts.contrailOne(fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "We have more freedom and opportunity to gradually increase our emotions in a sustainable way when we are emotionally neutral. If we want to feel a stronger emotion than what we currently feel, it's easier to make that change from a neutral state compared to making a big jump from a negative emotion to a positive one.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ]),
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
                    padding: EdgeInsets.fromLTRB(20, 70, 20, 10),
                    child: Text(
                      "Just in case you want to shift your current emotional state to being happy, here are some recommendations that you could possibly follow to achieve happiness.",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      MaterialButton(
                        padding: EdgeInsets.only(left: 20),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                              height: 200,
                              width: 300,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/images/daily1.jpg'),
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
                                        "Daily",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 50,
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
                                      width: MediaQuery.of(context).size.width,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/daily1.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(30),
                                      height: 740,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          children: [
                                            Container(
                                                color: Color(0xFF92e3a9),
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 10, 20, 0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Smile',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Smiling causes our brain to release dopamine, which is responsible for making us happier.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Exercise',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Regular exercises boost self-esteem and happiness because they can help minimize stress, anxiety, and even symptoms of depression—just don’t overexert yourself.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Get enough or plenty of sleep',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Sleep is very vital for our physical and mental health, as well as our emotional well-being. Having adequate sleep lowers the possibility of developing chronic conditions like heart disease, diabetes, and depression.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Eat with mood in mind',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Eating good and healthy food is truly encouraged; consuming the food that you really want or crave has an impact on your overall physical health and can affect your state of mind.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Practice gratitude',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'One possible way to boost your mood is by simply being grateful. Acknowledging that you’re grateful each day and practicing gratitude can have a momentous influence on feelings of hope and happiness.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Try being complimentary',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'One good way of boosting your happiness is by brightening someone’s day by giving them sincere compliments. When complimenting their physical appearance, remember to be kind and respectful.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Breathe deeply',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Based on research, practicing slow and deep breathing helps reduce stress as it calms your body.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Acknowledge unhappy moments',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Being optimistic is often beneficial, however, difficult and unfortunate times are part of our lives—bad things happen to everyone. Recognize these events and let unhappiness slide for a moment, then move forward when you’re ready to heal.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Keep a journal',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Having a journal is very handy because it helps in planning, organizing your ideas, and analyzing your feelings.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Face your stress head-on',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Life can be very stressful; however, sometimes stress has an upside. Address them head-on, and don’t get overwhelmed. You’re stronger than you think.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Never compare yourself to others',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Comparing yourself to others only results in lower self-esteem, dissatisfaction, and even depression and anxiety.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
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
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                              height: 200,
                              width: 300,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/images/weekly.jpg'),
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
                                        "Weekly",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 50,
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
                                      width: MediaQuery.of(context).size.width,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/weekly.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(30),
                                      height: 500,
                                      child: SingleChildScrollView(
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.fromLTRB(
                                              20, 10, 20, 0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Decluttering',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'A cluttered surroundings may contribute to a negative mood. Tidying up and having a peaceful and clean environment can help reduce stress and anxiety and increase your productivity.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'See friends',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Having companions share and spending time with them can evoke positive emotions and energy. If, more likely, you’re introverted, friends are not limited to human beings; animals and pets can be your friends too.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Organize your week',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Planning your week in advance helps you increase your productivity. It’s possible to not stick to the plan, but knowing the things to be done or prioritized in the week can quiet your mind.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Limit your screen time',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Frequent and prolonged phone usage can alter your brain function and affect your emotional well-being. Unplug and take a break. For a change, let your mind wander freely.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Touch some grass',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Spending time in nature can refresh our mind and body as it can help reduce stress, lower blood pressure, and reduce the chances of developing depression. Have activities in green spaces and breathe fresh air.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Meditate',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Meditation enhances your well-being. A simple deep breath or sitting calmly and quietly with your own thoughts for a couple of minutes can serve as your meditation.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Consider therapy',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'when you feel like you’re hitting a brick wall and need help coping with your situation, consider seeking out mental health professionals. They will assist you in improving your coping skills.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Find a self-care ritual',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Develop a personal routine or activity that promotes your mental, emotional, and physical well-being. It helps you get refreshed and rejuvenated. Examples are taking a warm bath, reading a book, meditating, etc.',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
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
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                              height: 200,
                              width: 300,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/images/monthly.jpg'),
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
                                        "Monthly",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 50,
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
                                      width: MediaQuery.of(context).size.width,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/monthly.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(30),
                                      height: 500,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Container(
                                          color: Color(0xFF92e3a9),
                                          padding: EdgeInsets.fromLTRB(
                                              20, 20, 20, 20),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Take yourself out',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Go and treat yourself, you deserve it. Watch some movies, eat at your favorite restaurant, or go on a trip you’ve dreamed of.',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Create a thought list',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Create a brief list of joyful memories or upcoming events that excite you. Jot them down on a small piece of paper or simply on your phone.',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      MaterialButton(
                        padding: EdgeInsets.only(right: 20),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                              height: 200,
                              width: 300,
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/images/yearly.jpg'),
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
                                        "Yearly",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 50,
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
                                      width: MediaQuery.of(context).size.width,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/yearly.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(30),
                                      height: 600,
                                      child: SingleChildScrollView(
                                        child: Container(
                                            color: Color(0xFF92e3a9),
                                            padding: EdgeInsets.fromLTRB(
                                                20, 20, 20, 20),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Take time to reflect',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Allocate some time to reconnect or catch up with yourself as you would with a longtime friend. Ask yourself: How are you doing? Are you happier than last year? Self-check-in gives you an insight into how to manage your stress and prevent burnout. However, refrain from judging yourself too harshly for your answers.',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Take a fresh look at your goals',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Reevaluating your goals helps you refocus your energy and resources on what truly matters to you and redirects you to what you really love. People change, get rid of the objectives that are not beneficial to you anymore, even if they may appear appealing on paper.',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Take good care of yourself',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Your physical and mental well-being are interconnected. Get yourself checked by professionals: dentists, physicians, healthcare professionals, optometrists, etc.',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Release any resentments',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Letting go of grudges is an act of self-care rather than solely an act of compassion for others. It’s not necessary that you reconcile; you’ll just have to end the relationship and move on.',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Plan a trip',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Research supports that taking that much-needed vacation benefits your mental and physical health. You did well on your hectic schedule, you deserve a time-off.',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Here are also a few tips to keep your emotions in check and maintain happiness:',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    height: 170,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20, left: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 150,
                            width: 300,
                            child: Text(
                              'Reflect on who the emotions truly belong to and consider the insights they may bring.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 300,
                            height: 150,
                            child: Text(
                              'Avoid reacting impulsively and instead adopt a non-judgmental viewpoint.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 300,
                            height: 150,
                            child: Text(
                              'Practice acceptance rather than resistance, allowing negativity to slide off.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 300,
                            height: 150,
                            child: Text(
                              'Forgive yourself for any past mistakes or neglect of your higher self.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 300,
                            height: 150,
                            child: Text(
                              'Choose a different perspective and consciously decide how you want to experience the situation.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 300,
                            height: 150,
                            child: Text(
                              'Let go of negative emotions by regarding them as part of the past and focus on staying present.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 300,
                            height: 150,
                            child: Text(
                              'Cultivate gratitude for the experiences and appreciate the wisdom and awareness they bring.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
                                  Random().nextInt(neutral_quotes.length);
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
                                            '${neutral_quotes[randomString2]}',
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
          } else {
            return Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 60),
                    child: Text(
                      'Remember to embrace positive emotions such as acceptance, energy, joy, creativity, tranquility, freedom, wisdom, peace, harmony, health, abundance, and love.',
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      'Each moment offers an opportunity for growth and creation.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      'Even if you typically have a neutral perspective, negative emotions can still arise. Being ready to handle them can improve your immediate and long-term well-being.',
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      'If the time comes that your neutral emotion shifts to negativity, here are some simple tips to keep your emotions in check:',
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20, left: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 150,
                            width: 220,
                            child: Text(
                              "Don't overthink situations by going over them repeatedly in your mind.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 150,
                            width: 220,
                            child: Text(
                              'Try to be rational – acknowledge that experiencing negative emotions is inevitable. Focus on finding ways to improve your well-being in such moments.',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 150,
                            width: 220,
                            child: Text(
                              'Relax – unwind through enjoyable activities such as reading, taking walks, dancing, watching movies, and having conversations with friends—anything that makes you happy.',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 150,
                            width: 220,
                            child: Text(
                              'Learn – in order to be prepared beforehand, learn how grief, loss, and anger affect your emotions and pay attention to the events that trigger them.',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 150,
                            width: 220,
                            child: Text(
                              'Exercise – engaging in aerobic activities reduces stress chemicals in your body and helps you better cope with negative emotions.',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF92e3a9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 150,
                            width: 220,
                            child: Text(
                              'Let go of the past – continuously dwelling on unpleasant events prevents you from fully enjoying the present and leads to negative emotions.',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Text(
                      'Substantially speaking, you’re in a state of emotional balance when you are feeling neutral, where neither positive nor negative emotions are prominent. Therefore, having coping mechanisms may not be necessary because what you feel is okay.',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      "However, at the end of the day, it's up to you to decide if you need coping mechanisms in neutral situations, based on what makes you feel happy and content.",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
