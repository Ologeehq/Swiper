import "package:flutter/material.dart";
import 'package:swipar/core/core_presentation/styles.dart' as Style;

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    this.label,
    this.controller,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          labelText: label,
          labelStyle: Style.subTitle2TextStyle.copyWith(
            color: Style.themeBlack,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF2F2F2),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF2F2F2),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF2F2F2),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
