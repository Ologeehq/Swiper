import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipar/views/onboarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Swipar());
}

class Swipar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: OnBoardingScreen(),
    );
  }
}
