import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:swipar/views/driver/driver_choose_park.dart';
import 'package:swipar/views/driver/wallet.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/views/widgets/custom_drawer.dart';
import 'package:swipar/views/widgets/menu_button.dart';
import 'package:swipar/views/widgets/profile_icon.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

class DriverMakeAvailable extends StatelessWidget {
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
                        builder: (context) => ChooseAParkView()));
              },
              label: "Make CAB Available",
              labelColor: Colors.white,
              shadow: true,
            ),
            LongButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WalletPage()));
              },
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
