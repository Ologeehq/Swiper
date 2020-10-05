import 'package:flutter/material.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;

class NoBorderRadiusTextField extends StatelessWidget {
  const NoBorderRadiusTextField({
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
        top: 5,
      ),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: Style.titleTextStyle.copyWith(
            color: Colors.black.withOpacity(0.25),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF818181),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Color(0xFF818181),
            ),
          ),
        ),
      ),
    );
  }
}
