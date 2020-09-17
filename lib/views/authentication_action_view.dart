import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swiper/views/driver/driver_register.dart';
import 'package:swiper/views/driver/register_car.dart';
import 'package:swiper/views/rider/register_view.dart';
import 'package:swiper/views/utilities/styles.dart' as Style;
import 'package:swiper/views/widgets/theme_long_button.dart';

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
            SvgPicture.asset("assets/pana.svg"),
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterCar(),
                    ));

              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
