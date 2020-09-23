import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/seat_booking_row.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

class SeatPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
                child: Icon(
                  Icons.close,
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
          ),
          Text(
            "CAB 2",
            textAlign: TextAlign.center,
            style: Style.headingTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 17),
            child: Text(
              "Driver:John Doe",
              textAlign: TextAlign.center,
              style: Style.subTitle2TextStyle.copyWith(
                color: Colors.black.withOpacity(0.56),
              ),
            ),
          ),
          Text(
            "Available Seats",
            textAlign: TextAlign.center,
            style: Style.titleTextStyle.copyWith(
              color: Colors.black.withOpacity(0.79),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView(
            children: [
              SeatBookingRow(
                available: false,
                buttonLabel: "Seat 1",
              ),
              SeatBookingRow(
                available: true,
                buttonLabel: "Seat 2",
              ),
              SeatBookingRow(
                available: false,
                buttonLabel: "Seat 3",
              ),
              SeatBookingRow(
                available: false,
                buttonLabel: "Seat 4",
              ),
              SeatBookingRow(
                available: true,
                buttonLabel: "Seat 5",
              ),
              SeatBookingRow(
                available: true,
                buttonLabel: "Seat 6",
              ),
            ],
          )),
          LongButton(
            label: "Proceed",
            shadow: true,
            onPressed: () {
              Navigator.pop(context);
            },
            labelColor: Colors.white,
            color: Style.themeGreen,
          ),
        ],
      ),
    );
  }
}
