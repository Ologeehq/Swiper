import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/constants.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/views/widgets/theme_long_button.dart';

class BookingConfirmed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Container(
      height: kScreenSize.height * 0.45,
      padding: const EdgeInsets.fromLTRB(30, 12, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            "Your booking has been confirmed!",
            textAlign: TextAlign.center,
            style: Style.headingTextStyle,
          ),
          Spacer(
            flex: 2,
          ),
          Text(
            "Please proceed to the park before the countdown ends or your booking will be cancelled.",
            textAlign: TextAlign.center,
            style: Style.subTitle1TextStyle.copyWith(
              color: Style.themeRed,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          LongButton(
            label: "Make Payments",
            shadow: true,
            onPressed: () {
              Navigator.pop(context);
            },
            labelColor: Colors.white,
            color: Style.themeGreen,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
