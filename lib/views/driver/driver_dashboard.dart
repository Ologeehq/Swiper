import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:swipar/views/driver/register_car.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/custom_drawer.dart';
import 'package:swipar/views/widgets/menu_button.dart';
import 'package:swipar/views/widgets/profile_icon.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';
import 'package:swipar/views/rider/check_a_nearby_park.dart';

class DriverDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 40),
        child: Column(
          children: [
            MenuButton(),
            Text(
              "Good morning Ola",
              style: Style.headingTextStyle.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "0803432445",
              style: Style.subTitle1TextStyle.copyWith(
                color: Colors.black,
              ),
            ),
            ProfileIcon(),
            Spacer(
              flex: 2,
            ),
            LongButton(
              color: Style.themeBlue,
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => RegisterCar(),
                    ));
              },
              label: "Register your vehicle",
              labelColor: Colors.white,
              shadow: true,
            ),
            LongButton(
              color: Colors.white,
              onPressed: () {},
              label: "Withdraw",
              labelColor: Style.themeBlack,
              shadow: true,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
