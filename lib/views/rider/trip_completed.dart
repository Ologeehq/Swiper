import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipar/views/utilities/constants.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;

class TripCompletion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Container(
      height: kScreenSize.height * 0.48,
      padding: EdgeInsets.fromLTRB(30, 15, 30, 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
                child: Icon(
                  Icons.close,
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
          ),
          Text(
            "Trip Completed",
            textAlign: TextAlign.center,
            style: Style.headingTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Thank you for the review!",
            textAlign: TextAlign.center,
            style: Style.subTitle1TextStyle,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: SvgPicture.asset(
            "assets/tripfinished.svg",
            width: double.infinity,
          )),
          backToHome(context),
        ],
      ),
    );
  }
}
