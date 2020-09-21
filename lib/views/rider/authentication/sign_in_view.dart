import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:swipar/views/authentication_action_view.dart';
import 'package:swipar/views/rider/authentication/reset_password.dart';
import 'package:swipar/views/rider/rider_home_page.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/no_border_radius_textfield.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 10,
                ),
                child: Text(
                  "Sign in",
                  textAlign: TextAlign.center,
                  style: Style.headingTextStyle,
                ),
              ),
              Image(image: AssetImage("assets/hello.png")),
              NoBorderRadiusTextField(
                label: "Phone Number",
              ),
              NoBorderRadiusTextField(
                label: "Password",
              ),
              LongButton(
                color: Style.themeBlue,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => RiderDashboard(),
                      ));
                },
                label: "Login",
                labelColor: Colors.white,
                shadow: true,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ResetPasswordView(),
                      ));
                },
                child: Text(
                  "Forgot password?",
                  textAlign: TextAlign.center,
                  style: Style.captionTextStyle.copyWith(
                    color: Style.themeBlue,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Don\' have an account? ",
                    style: Style.captionTextStyle.copyWith(
                      color: Style.themeBlack,
                    ),
                    children: [
                      TextSpan(
                          text: "Create here",
                          style: Style.captionTextStyle.copyWith(
                            color: Style.themeGreen,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => AuthActionScreen(),
                                  ));
                            }),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
