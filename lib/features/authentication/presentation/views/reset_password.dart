import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/features/authentication/presentation/views/verify_view.dart';
import 'package:swipar/views/widgets/no_border_radius_textfield.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

class ResetPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
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
            SizedBox(
              height: 10,
            ),
            Text(
              "Register",
              textAlign: TextAlign.center,
              style: Style.headingTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
                top: 10,
              ),
              child: Text(
                "Enter the phone number you signed up with",
                textAlign: TextAlign.center,
                style: Style.subTitle1TextStyle,
              ),
            ),
            Spacer(),
            NoBorderRadiusTextField(
              label: "Phone Number",
            ),
            Spacer(
              flex: 3,
            ),
            LongButton(
              label: "Reset password",
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => VerifyPhoneView(),
                    ));
              },
              color: Style.themeBlue,
              shadow: true,
              labelColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Already have a reset code? ",
                  style: Style.captionTextStyle.copyWith(
                    color: Style.themeBlack,
                  ),
                  children: [
                    TextSpan(
                        text: "Verify here",
                        style: Style.captionTextStyle.copyWith(
                          color: Style.themeGreen,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => VerifyPhoneView(),
                                ));
                          }),
                  ]),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
