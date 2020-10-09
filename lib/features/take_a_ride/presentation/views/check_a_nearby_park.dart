import 'package:flutter/material.dart';
import 'package:swipar/views/widgets/custom_scaffold.dart';
import 'book_a_ride.dart';

class ChooseAParkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwiparScaffold(
      body: RideBookingBody(
        subtitle: "Choose a nearby park",
      ),
    );
  }
}
