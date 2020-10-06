import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:flutter/material.dart';
import 'package:swipar/views/widgets/custom_scaffold.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwiparScaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "About us",
              textAlign: TextAlign.center,
              style: Style.headingTextStyle.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Divider(),
            Spacer(),
            Text(
              "Welcome to swipar and thanks for choosing our service.",
              style: Style.titleTextStyle.copyWith(
                color: Colors.black.withOpacity(0.65),
              ),
            ),
            Text(
              "Swipar is here to...",
              style: Style.titleTextStyle.copyWith(
                color: Colors.black.withOpacity(0.65),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Text(
              "Contact Us",
              textAlign: TextAlign.center,
              style: Style.titleTextStyle.copyWith(
                color: Colors.black.withOpacity(0.65),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/google.svg",
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Swiftparkorg@gmail.com",
                  style: Style.subTitle1TextStyle.copyWith(
                    color: Colors.black.withOpacity(0.650),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/twitter.svg",
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "@Swipar_",
                  style: Style.subTitle1TextStyle.copyWith(
                    color: Colors.black.withOpacity(0.650),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  "assets/facebook.svg",
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Swift Park",
                  style: Style.subTitle1TextStyle.copyWith(
                    color: Colors.black.withOpacity(0.650),
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
