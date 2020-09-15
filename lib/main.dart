import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiper/views/onboarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Swipar());
}

class Swipar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: OnBoardingScreen(),
    );
  }
}
