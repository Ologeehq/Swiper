import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'styles.dart';

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
                  backgroundColor: themeBlue,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // static void show_Toast({@required String message, Color color}) {
  //   Fluttertoast.showToast(
  //     msg: message,
  //     gravity: ToastGravity.TOP,
  //     backgroundColor: color ?? Colors.blueGrey,
  //     textColor: Color(0xFFF4F4F4),
  //     toastLength: Toast.LENGTH_SHORT,
  //   );
  // }

  static void remove(BuildContext context) {
    Navigator.pop(context);
  }

  static void snackBar(
    BuildContext context,
    String message, [
    SnackBarType type = SnackBarType.info,
  ]) {
    FToast()
      ..init(context)
      ..showToast(
        child: Container(
          height: 40,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: type == SnackBarType.error ? themeRed : themeBlue,
          ),
          child: Text(
            '$message',
            style: body1TextStyle.copyWith(color: Colors.white),
          ),
        ),
        gravity: ToastGravity.BOTTOM,
        toastDuration: type == SnackBarType.error
            ? Duration(seconds: 3, milliseconds: 500)
            : Duration(seconds: 2, milliseconds: 500),
      );
  }
}

enum SnackBarType {
  error,
  info,
}
