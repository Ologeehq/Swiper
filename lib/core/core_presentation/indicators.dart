import 'package:flutter/material.dart';

class Indicator {
  static void activitiy(BuildContext context, {String activity}) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 0.7,
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
