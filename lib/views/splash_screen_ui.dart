// ignore: unused_import
// ignore_for_file: prefer_const_constructors

import 'package:dti_love_project/views/introduction_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วงเวลา 3 วินาที แล้วเปิดไปหน้าจอ in
    Future.delayed(
      //เวลาที่หน่วง
      Duration(
        seconds: 4,
      ),
      //เมื่อครบเวลาหน่วงแล้ว
      //เปิดไปหน้าจอ Intro
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroductionUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo_2.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Super Cars DTI 2024',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 11.0,
                ),
                Text(
                  'I GOOD CARS',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                CircularProgressIndicator(
                  color: Colors.deepOrange[600],
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Copyright @DTI',
                  style: GoogleFonts.itim(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      color: Colors.amber),
                ),
                Text(
                  'By charinrat ',
                  style: GoogleFonts.itim(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      color: Colors.amber),
                ),
                Text(
                  'Destoyer.com',
                  style: GoogleFonts.itim(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      color: Colors.amber),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
