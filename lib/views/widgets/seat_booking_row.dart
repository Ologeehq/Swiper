import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/booking_button.dart';

class SeatBookingRow extends StatelessWidget {
  final String buttonLabel;
  final bool available;

  const SeatBookingRow({Key key, this.buttonLabel, this.available})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 10,
      ),
      child: Row(
        children: [
          BookingButton(
            label: buttonLabel,
            available: available,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              color: Color(0xFFF4F5F6),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Center(
                child: Text(
                  available ? "Available" : "Booked",
                  style: Style.titleTextStyle.copyWith(
                    color: Style.themeBlack,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
