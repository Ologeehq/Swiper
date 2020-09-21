import 'package:flutter/material.dart';
import 'package:swipar/views/rider/authentication/register_view.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/theme_long_button.dart';

class AuthActionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
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
                "What would you like to do?",
                textAlign: TextAlign.center,
                style: Style.subTitle1TextStyle,
              ),
            ),
            Spacer(),
            Image(
              image: AssetImage("assets/vehiclesale.png"),
            ),
            Spacer(),
            LongButton(
              label: "Sign up to ride",
              color: Style.themeBlue,
              labelColor: Colors.white,
              shadow: true,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterRiderView(),
                    ));
              },
            ),
            LongButton(
              label: "Apply to drive",
              color: Style.themeBlue,
              labelColor: Colors.white,
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
