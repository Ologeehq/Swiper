import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/constants.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/views/widgets/star_rating.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

class RateRide extends StatefulWidget {
  @override
  _RateRideState createState() => _RateRideState();
}

class _RateRideState extends State<RateRide> {
  int ratingValue = 0;
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Container(
      height: kScreenSize.height * 0.47,
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
            "How was your experience?",
            textAlign: TextAlign.center,
            style: Style.titleTextStyle,
          ),
          SizedBox(
            height: 8,
          ),
          StarRatingDisplay(
            value: ratingValue,
            onChanged: (int) {
              setState(() {
                ratingValue = int;
              });
            },
          ),
          Spacer(),
          LongButton(
            color: Style.themeBlue,
            onPressed: () {
              Navigator.pop(context);
            },
            label: "Submit",
            labelColor: Colors.white,
            shadow: true,
          ),
          backToHome(context),
        ],
      ),
    );
  }
}
