import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiper/views/utilities/styles.dart' as Style;
import 'package:swiper/views/widgets/theme_long_button.dart';

class VerifyPhoneView extends StatefulWidget {
  @override
  _VerifyPhoneViewState createState() => _VerifyPhoneViewState();
}

class _VerifyPhoneViewState extends State<VerifyPhoneView> {
  pressButtonFunction(int number, Icon icon) {
    if (icon != null) {
      if (fourthNumber != null) {
        setState(() {
          fourthNumber = number;
        });
        return;
      }
      if (thirdNumber != null) {
        setState(() {
          thirdNumber = null;
        });
        return;
      }
      if (secondNumber != null) {
        setState(() {
          secondNumber = null;
        });
        return;
      }
      if (firstNumber != null) {
        setState(() {
          firstNumber = null;
        });
        return;
      } else {
        return;
      }
    }
    if (firstNumber == null) {
      setState(() {
        firstNumber = number;
      });
      return;
    }
    if (secondNumber == null) {
      setState(() {
        secondNumber = number;
      });
      return;
    }
    if (thirdNumber == null) {
      setState(() {
        thirdNumber = number;
      });
      return;
    }
    if (fourthNumber == null) {
      setState(() {
        fourthNumber = number;
      });
      return;
    } else {
      return;
    }
  }

  Widget buildNumberButton({int number, Icon icon}) {
    getChild() {
      if (icon != null) {
        return icon;
      } else {
        return Text(
          number?.toString() ?? "",
          style: GoogleFonts.karla(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        );
      }
    }

    return Expanded(
        child: FlatButton(
            onPressed: () {
              pressButtonFunction(number, icon);
            },
            child: getChild()));
  }

  Widget buildNumberRow(List<int> numbers) {
    List<Widget> buttonList = numbers
        .map((buttonNumber) => buildNumberButton(number: buttonNumber))
        .toList();
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: buttonList,
    ));
  }

  Widget buildSpecialRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildNumberButton(),
          buildNumberButton(number: 0),
          buildNumberButton(icon: Icon(Icons.backspace))
        ],
      ),
    );
  }

  buildDot() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color(0xFF979797).withOpacity(0.25)),
    );
  }

  numberResultRow(int number) {
    if (number == null) {
      return buildDot();
    } else {
      return Text(
        "$number",
        style: GoogleFonts.karla(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      );
    }
  }

  int firstNumber;
  int secondNumber;
  int thirdNumber;
  int fourthNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: IconButton(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              "Verify your Phone Number",
              textAlign: TextAlign.center,
              style: Style.headingTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 30,
              top: 10,
              left: 30,
              right: 30,
            ),
            child: Text(
              "Input the code sent to you",
              textAlign: TextAlign.center,
              style: Style.subTitle1TextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                numberResultRow(firstNumber),
                numberResultRow(secondNumber),
                numberResultRow(thirdNumber),
                numberResultRow(fourthNumber),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: LongButton(
              onPressed: () {},
              label: "Verify",
              labelColor: Colors.white,
              shadow: true,
              color: Style.themeBlue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
              left: 30,
              right: 30,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Didn't get the code? ",
                  style: Style.captionTextStyle.copyWith(
                    color: Style.themeBlack,
                  ),
                  children: [
                    TextSpan(
                        text: "Resend",
                        style: Style.captionTextStyle.copyWith(
                          color: Style.themeRed,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //todo: Resend FUnction
                          }),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFF3F6F8),
              child: Column(
                children: [
                  buildNumberRow([1, 2, 3]),
                  buildNumberRow([4, 5, 6]),
                  buildNumberRow([7, 8, 9]),
                  buildSpecialRow(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
