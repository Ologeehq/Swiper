import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiper/views/authentication_action_view.dart';
import 'package:swiper/views/rider/authentication/sign_in_view.dart';
import 'package:swiper/views/widgets/theme_long_button.dart';
import 'package:swiper/views/utilities/styles.dart' as Style;

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            Image(
              image: AssetImage("assets/busstop.png"),
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
