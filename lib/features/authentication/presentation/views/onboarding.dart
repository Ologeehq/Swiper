import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/core_presentation/styles.dart' as Style;
import '../../../../views/utilities/constants.dart';
import '../../../../views/widgets/theme_long_button.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          children: [
            Spacer(),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Let\'s Get Started",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Spacer(
              flex: 3,
            ),
            SvgPicture.asset(
              "assets/busstop.svg",
              height: kScreenSize.height * 0.283,
              fit: BoxFit.fill,
            ),
            Spacer(),
            LongButton(
              label: "Register",
              color: Style.themeBlue,
              labelColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed('/authentication');
              },
            ),
            LongButton(
              label: "Login",
              color: Colors.white,
              labelColor: Style.themeBlack,
              onPressed: () {
                Navigator.of(context).pushNamed('/authentication/login');
              },
              shadow: true,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/authentication/login');
              },
              child: RichText(
                text: TextSpan(
                    text: "Have an Account? ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: TextStyle(color: Style.themeGreen),
                      ),
                    ]),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
