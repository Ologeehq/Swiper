import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:swiper/views/driver/register_car.dart';
import 'package:swiper/views/rider/sign_in_view.dart';
import 'package:swiper/views/utilities/constants.dart';
import 'package:swiper/views/widgets/customDropdown.dart';
import 'package:swiper/views/widgets/custom_text_field.dart';
import "package:flutter/material.dart";
import 'package:swiper/views/utilities/styles.dart' as Style;
import 'package:swiper/views/widgets/theme_long_button.dart';

class DriverRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Text(
                "Register",
                textAlign: TextAlign.center,
                style: Style.headingTextStyle,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 30,
                  top: 10,
                ),
                child: Text(
                  "It's quick and easy",
                  textAlign: TextAlign.center,
                  style: Style.subTitle1TextStyle,
                ),
              ),
              CustomTextField(
                label: "Full name",
              ),
              CustomTextField(
                label: "Email",
              ),
              CustomTextField(
                label: "Phone number",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomDropdown(
                      label: "DD",
                      items: getDates(),
                    ),
                  ),
                  Expanded(
                    child: CustomDropdown(
                      label: "MM",
                      items: months,
                    ),
                  ),
                  Expanded(
                    child: CustomDropdown(
                      label: "YYYY",
                      items: getYears(),
                    ),
                  ),
                ],
              ),
              CustomDropdown(
                label: "Gender",
                items: gender,
              ),
              CustomTextField(
                label: "password",
              ),
              CustomTextField(
                label: "Confirm password",
              ),
              SizedBox(
                height: 18,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "By clicking on \'Sign up\', you agree to \nour ",
                    style: Style.captionTextStyle.copyWith(
                      color: Style.themeBlack,
                    ),
                    children: [
                      TextSpan(
                        text: "Terms and Conditions",
                        style: Style.captionTextStyle.copyWith(
                          color: Style.themeBlue,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                        style: Style.captionTextStyle.copyWith(
                          color: Style.themeBlack,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy policy",
                        style: Style.captionTextStyle.copyWith(
                          color: Style.themeBlue,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              LongButton(
                color: Style.themeBlue,
                onPressed: () {

                },
                label: "Apply to Drive",
                labelColor: Colors.white,
                shadow: true,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Already have an account? ",
                  style: Style.body1TextStyle.copyWith(
                    color: Style.themeBlack,
                  ),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: Style.body1TextStyle.copyWith(
                        color: Style.themeBlue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => LoginView(),
                              ));
                        },
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

getYears() {
  List<int> years = [];
  for (int i = 1920; i < DateTime.now().year + 1; i++) {
    years.add(i);
  }
  return years;
}

getDates() {
  List<int> dates = [];
  for (int i = 01; i < 32; i++) {
    dates.add(i);
  }
  return dates;
}
