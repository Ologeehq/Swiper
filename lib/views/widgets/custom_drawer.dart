import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipar/views/rider/about_screen.dart';
import 'package:swipar/views/rider/ride_history.dart';
import 'package:swipar/views/rider/support_screen.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/views/widgets/profile_icon.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.62,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileIcon(
                          borderWidth: 0.96,
                          radius: 50,
                          iconSize: 20,
                          withMargin: false,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Ola",
                                    style: Style.headingTextStyle,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text("Edit profile",
                                  style: Style.subTitle1TextStyle),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Wallet: N5,500",
                                style: Style.subTitle1TextStyle.copyWith(
                                  color: Style.themeGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 40,
                    ),
                    DrawerMenuItem(
                      assetPath: "assets/wallet.svg",
                      label: "Withdrawal",
                    ),
                    DrawerMenuItem(
                      assetPath: "assets/history.svg",
                      label: "Ride History",
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => RideHistory(),
                            ));
                      },
                    ),
                    DrawerMenuItem(
                      assetPath: "assets/support.svg",
                      label: "Support",
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => Support(),
                            ));
                      },
                    ),
                    DrawerMenuItem(
                      assetPath: "assets/about.svg",
                      label: "About us",
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => About(),
                            ));
                      },
                    ),
                    DrawerMenuItem(
                      assetPath: "assets/privacy.svg",
                      label: "Privacy Policy",
                    ),
                  ],
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Style.themeRed,
              onPressed: () {},
              child: Text(
                "Log out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    Key key,
    this.label,
    this.assetPath,
    this.onPressed,
  }) : super(key: key);
  final String assetPath;
  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          bottom: 30,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              assetPath,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              label,
              style: Style.subTitle1TextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
