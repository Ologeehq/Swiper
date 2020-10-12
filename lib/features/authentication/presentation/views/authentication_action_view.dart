import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/core_presentation/styles.dart' as Style;
import '../../../../views/widgets/theme_long_button.dart';

class SelectRegisterTypeView extends StatelessWidget {
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
            SvgPicture.asset(
              "assets/vehiclesale.svg",
              height: 180,
            ),
            Spacer(),
            LongButton(
              label: "Sign up to ride",
              color: Style.themeBlue,
              labelColor: Colors.white,
              shadow: true,
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/authentication/registerRider');
              },
            ),
            LongButton(
              label: "Apply to drive",
              color: Style.themeBlue,
              labelColor: Colors.white,
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/authentication/registerDriver');
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
