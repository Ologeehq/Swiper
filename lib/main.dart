import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipar/features/authentication/presentation/views/onboarding.dart';
import 'package:swipar/router.dart';

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
      onGenerateRoute: Router.router,
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
