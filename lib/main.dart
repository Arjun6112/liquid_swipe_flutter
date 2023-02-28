import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  ;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final pages = [
    Container(
      color: Colors.red,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0, right: 40),
            child: Image.asset('assets/test1.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Book a cab",
            style: GoogleFonts.poppins(
                fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.purpleAccent,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Image.asset('assets/test2.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Cash or card",
            style: GoogleFonts.poppins(
                fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.orangeAccent,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0, right: 20),
            child: Image.asset('assets/test3.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Cancel any time",
            style: GoogleFonts.poppins(
                fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.lightGreen),
      home: Scaffold(
          body: LiquidSwipe(
        enableLoop: true,
        fullTransitionValue: 300,
        enableSideReveal: false,
        positionSlideIcon: 0.5,
        slideIconWidget: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 35,
        ),
        pages: pages,
      )),
    );
  }
}
