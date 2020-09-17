import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:swiper/views/rider/book_a_ride.dart';
import 'package:swiper/views/utilities/styles.dart' as Style;
import 'package:swiper/views/widgets/theme_long_button.dart';

import 'check_a_nearby_park.dart';

class RiderDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ImageIcon(AssetImage("assets/menu-icon.png")),
              ],
            ),
            Text(
              "Good morning OG",
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
            Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              height: 115,
              width: 115,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Style.themeBlue.withOpacity(0.0307),
                border: Border.all(
                  color: Style.themeBlue,
                  width: 2.24,
                ),
              ),
              child: Icon(
                Icons.person,
                size: 60,
                color: Style.themeBlue,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            LongButton(
              color: Style.themeBlue,
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => BookARideView(),
                    ));
              },
              label: "Book a ride",
              labelColor: Colors.white,
              shadow: true,
            ),
            LongButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => ChooseAParkView()));
              },
              label: "Choose a nearby park",
              labelColor: Style.themeBlack,
              shadow: true,
            ),
            LongButton(
              color: Colors.white,
              onPressed: () {},
              label: "Fund your wallet",
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
