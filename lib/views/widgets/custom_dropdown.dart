import 'dart:math';

import "package:flutter/material.dart";
import 'package:swipar/core/core_presentation/styles.dart' as Style;

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    Key key,
    this.items,
    this.label,
    this.width,
  }) : super(key: key);
  final List items;
  final String label;
  final double width;
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: DropdownButtonFormField(
        icon: Transform.rotate(
          angle: pi / 2,
          child: Icon(
            Icons.chevron_right,
            color: Style.themeBlack,
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 8),
          labelText: widget.label,
          labelStyle: Style.subTitle1TextStyle,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Color(0xFFF2F2F2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Color(0xFFF2F2F2),
            ),
          ),
        ),
        onChanged: (value) {},
        items: [
          for (int i = 0; i < widget.items.length; i++)
            DropdownMenuItem(
              value: widget.items[i].toString(),
              child: Text(
                widget.items[i].toString(),
              ),
            ),
        ],
      ),
    );
  }
}
