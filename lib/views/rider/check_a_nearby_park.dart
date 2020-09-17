import 'package:flutter/material.dart';
import 'book_a_ride.dart';

class ChooseAParkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RideBookingBody(
        subtitle: "Choose a nearby park",
      ),
    );
  }
}
