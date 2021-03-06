import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipar/features/authentication/presentation/views/sign_in_view.dart';
import 'package:swipar/views/authentication_action_view.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/views/utilities/constants.dart';

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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthActionScreen(),
                    ));
              },
            ),
            LongButton(
              label: "Login",
              color: Colors.white,
              labelColor: Style.themeBlack,
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => LoginView(),
                    ));
              },
              shadow: true,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => LoginView(),
                    ));
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
