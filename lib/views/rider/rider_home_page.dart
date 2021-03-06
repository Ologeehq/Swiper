import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:swipar/features/take_a_ride/presentation/views/book_a_ride.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/views/widgets/custom_scaffold.dart';
import 'package:swipar/views/widgets/menu_button.dart';
import 'package:swipar/views/widgets/profile_icon.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';
import '../../features/take_a_ride/presentation/views/check_a_nearby_park.dart';
import 'package:swipar/views/utilities/constants.dart';

class RiderDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return SwiparScaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 40),
        child: Column(
          children: [
            MenuButton(),
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
