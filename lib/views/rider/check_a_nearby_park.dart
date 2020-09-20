import 'package:flutter/material.dart';
import 'package:swiper/views/widgets/custom_drawer.dart';
import 'book_a_ride.dart';

class ChooseAParkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppDrawer(),
      body: RideBookingBody(
        subtitle: "Choose a nearby park",
      ),
    );
  }
}
