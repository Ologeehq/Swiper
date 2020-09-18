import 'package:flutter/cupertino.dart';
import 'package:swiper/views/driver/driver_register.dart';
import 'package:swiper/views/utilities/constants.dart';
import 'package:swiper/views/widgets/customDropdown.dart';
import 'package:swiper/views/widgets/custom_text_field.dart';
import "package:flutter/material.dart";
import 'package:swiper/views/utilities/styles.dart' as Style;
import 'package:swiper/views/widgets/theme_long_button.dart';

class RegisterCar extends StatelessWidget {
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
                "Register Car",
                textAlign: TextAlign.center,
                style: Style.headingTextStyle,
              ),
              SizedBox(height: 32,),
              CustomTextField(
                label: "Driver's name",
              ),
              CustomTextField(
                label: "Drivers Phone Number",
              ),
              CustomTextField(
                label: "Plate Number",
              ),
              CustomDropdown(
                label: "Car type",
                items: carType,
              ),
              CustomTextField(
                label: "Agent Code",
              ),
              SizedBox(
                height: 18,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "By clicking on \'Proceed\', you agree to \nour ",
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
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DriverRegister()));
                },
                label: "Proceed",
                labelColor: Colors.white,
                shadow: true,
              ),

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