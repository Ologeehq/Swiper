import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/theme_long_button.dart';

class BookingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 12, 30, 30),
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
            "Your bookings",
            style: Style.headingTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            "Please pay now to confirm your booking!",
            style: Style.subTitle1TextStyle,
          ),
          Spacer(),
          BookingDetailRow(
            bookingTitle: "Fare",
            detail: "N5000",
          ),
          BookingDetailRow(
            bookingTitle: "Wait time",
            detail: "5 minutes",
          ),
          BookingDetailRow(
            bookingTitle: "CAB",
            detail: "1",
          ),
          BookingDetailRow(
            bookingTitle: "Seat",
            detail: "4",
          ),
          Spacer(),
          LongButton(
            color: Style.themeGreen,
            labelColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            label: "Confirm",
            shadow: true,
          )
        ],
      ),
    );
  }
}

class BookingDetailRow extends StatelessWidget {
  final String bookingTitle;
  final String detail;
  const BookingDetailRow({
    Key key,
    this.bookingTitle,
    this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bookingTitle ?? " ",
            style: Style.titleTextStyle,
          ),
          Text(
            detail ?? "",
            style: Style.titleTextStyle,
          ),
        ],
      ),
    );
  }
}
