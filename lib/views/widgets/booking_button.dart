import 'package:flutter/material.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;

class BookingButton extends StatefulWidget {
  final bool available;
  final String label;

  const BookingButton({
    Key key,
    this.available = true,
    this.label,
  }) : super(key: key);
  @override
  _BookingButtonState createState() => _BookingButtonState();
}

class _BookingButtonState extends State<BookingButton> {
  bool selected = false;
  getTextColor() {
    if (widget.available) {
      if (selected) {
        return Colors.white;
      } else {
        return Style.themeBlue;
      }
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: selected
              ? null
              : [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ]),
      child: FlatButton(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),
        disabledColor: Color(0xFFAAAAAA),
        color: selected ? Style.themeBlue : Color(0xFFFFFFFF),
        onPressed: !widget.available
            ? null
            : () {
                setState(() {
                  selected = !selected;
                });
              },
        child: Text(
          widget.label ?? "",
          style: Style.titleTextStyle.copyWith(
            color: getTextColor(),
          ),
        ),
      ),
    );
  }
}
