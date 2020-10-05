import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:swipar/views/rider/rider_home_page.dart';

import '../../core/core_presentation/styles.dart' as Style;

import 'package:flutter/cupertino.dart';

const List carType = [
  "Saloon",
  "Minibus",
  "Bus",
];

const List gender = [
  "Male",
  "Female",
  "Other",
];
const List months = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December",
];
Size kScreenSize;

backToHome(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => RiderDashboard(),
          ));
    },
    child: RichText(
        text: TextSpan(
            text: "Back to ",
            style: Style.subTitle1TextStyle.copyWith(
              color: Colors.black,
            ),
            children: [
          TextSpan(
            text: "Home",
            style: Style.subTitle1TextStyle.copyWith(
              color: Style.themeGreen,
            ),
          ),
        ])),
  );
}
