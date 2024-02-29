// ignore: unused_import
// ignore_for_file: prefer_const_constructors

import 'package:dti_love_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 159, 225),
      body: IntroductionScreen(
        autoScrollDuration: 2000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'Super Cars 0001' ,
                style:  GoogleFonts.kanit(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 52, 55, 113),
              ),
              ),
            image: Image.asset(
              'assets/images/car1.jpg',
            ),
            bodyWidget: Text(
              '3,990,000 Bath',
              textAlign: TextAlign.center,
              style:  GoogleFonts.kanit(),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Super Cars 0002' ,
                style:  GoogleFonts.kanit(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 52, 55, 113),
              ),
              ),
            image: Image.asset(
              'assets/images/car2.jpg',
            ),
            bodyWidget: Text(
              '1,099,000 Bath',
              textAlign: TextAlign.center,
              style:  GoogleFonts.kanit(),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Super Cars 0003' ,
                style:  GoogleFonts.kanit(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 52, 55, 113),
              ),
              ),
            image: Image.asset(
              'assets/images/car3.jpg',
            ),
            bodyWidget: Text(
              '890,000 Bath',
              textAlign: TextAlign.center,
              style:  GoogleFonts.kanit(),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Super Cars 0004' ,
                style:  GoogleFonts.kanit(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 52, 55, 113),
              ),
              ),
            image: Image.asset(
              'assets/images/car4.jpg',
            ),
            bodyWidget: Text(
              '2,999,000 Bath',
              textAlign: TextAlign.center,
              style:  GoogleFonts.kanit(),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Super Cars 0004' ,
                style:  GoogleFonts.kanit(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 52, 55, 113),
              ),
              ),
            image: Image.asset(
              'assets/images/car4.jpg',
            ),
            bodyWidget: Text(
              '1,222,000 Bath',
              textAlign: TextAlign.center,
              style:  GoogleFonts.kanit(),
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: GoogleFonts.kanit(),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(
            MediaQuery.of(context).size.width * 0.025,
            MediaQuery.of(context).size.width * 0.025,
          ),
          color: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.width * 0.025,
          ),
          activeColor: Colors.purple,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,

        ),
        done: Text(
          'เริ้มต้ม',
          style: GoogleFonts.kanit(),
        ),
        nextFlex: 0,
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),

      ),
    );
  }
}
