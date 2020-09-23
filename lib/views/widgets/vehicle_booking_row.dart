import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;

import 'booking_button.dart';

class VehicleBookingRow extends StatelessWidget {
  final String driverName;
  final String phoneNumber;
  final bool available;
  final String label;

  const VehicleBookingRow({
    Key key,
    this.driverName,
    this.phoneNumber,
    this.available,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        children: [
          BookingButton(
            available: available,
            label: label,
          ),
          SizedBox(
            width: 45,
          ),
          Column(
            children: [
              Text(
                "Driver\'s Name: $driverName",
                style: Style.captionTextStyle.copyWith(
                  color: Style.themeBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Phone No: $phoneNumber",
                style: Style.captionTextStyle.copyWith(
                  color: Style.themeBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
