import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipar/views/onboarding.dart';

import 'dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppDependencies.registerDependecies();
  runApp(Swipar());
}

class Swipar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ).copyWith(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: OnBoardingScreen(),
    );
  }
}
