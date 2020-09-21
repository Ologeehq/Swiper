import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swipar/views/driver/driver_dashboard.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/theme_long_button.dart';

class DriverVerify extends StatefulWidget {
  @override
  _DriverVerifyState createState() => _DriverVerifyState();
}

class _DriverVerifyState extends State<DriverVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
              child: IconButton(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                "Verify your Phone Number",
                textAlign: TextAlign.center,
                style: Style.headingTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
                top: 10,
                left: 30,
                right: 30,
              ),
              child: Text(
                "Input the code sent to you",
                textAlign: TextAlign.center,
                style: Style.subTitle1TextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 70,
              ),
              child: PinCodeTextField(
                autoFocus: true,
                keyboardType: TextInputType.number,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                onChanged: (String value) {},
                appContext: context,
                length: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: LongButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => DriverDashboard(),
                      ));
                },
                label: "Verify",
                labelColor: Colors.white,
                shadow: true,
                color: Style.themeBlue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                left: 30,
                right: 30,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Didn't get the code? ",
                    style: Style.captionTextStyle.copyWith(
                      color: Style.themeBlack,
                    ),
                    children: [
                      TextSpan(
                          text: "Resend",
                          style: Style.captionTextStyle.copyWith(
                            color: Style.themeRed,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //todo: Resend FUnction
                            }),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
