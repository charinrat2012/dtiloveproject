// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Super shy',
          style: GoogleFonts.kanit(color: Colors.deepPurpleAccent),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white12,
        ),
      ),
      drawer: Drawer(),
    );
  }
}
