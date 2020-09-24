import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/constants.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/vehicle_booking_row.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

class VehiclePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Container(
      height: kScreenSize.height * 0.8,
      width: kScreenSize.width,
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "From: Unilorin park",
                textAlign: TextAlign.center,
                style: Style.headingTextStyle,
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  alignment: Alignment.centerRight,
                  icon: Icon(
                    Icons.close,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
          Text(
            "To: Terminus",
            style: Style.headingTextStyle,
          ),
          SizedBox(
            height: 26,
          ),
          Text(
            "Available Vehicles",
            style: Style.subTitle1TextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 4),
              children: [
                VehicleBookingRow(
                  available: true,
                  label: "CAB 1",
                  phoneNumber: "9704703743",
                  driverName: "John DOe",
                ),
                VehicleBookingRow(
                  available: true,
                  label: "CAB 2",
                  phoneNumber: "9704703743",
                  driverName: "John DOe",
                ),
                VehicleBookingRow(
                  available: false,
                  label: "CAB 3",
                  phoneNumber: "9704703743",
                  driverName: "John DOe",
                ),
                VehicleBookingRow(
                  available: true,
                  label: "CAB 4",
                  phoneNumber: "9704703743",
                  driverName: "John DOe",
                ),
                VehicleBookingRow(
                  available: true,
                  label: "CAB 5",
                  phoneNumber: "9704703743",
                  driverName: "John DOe",
                ),
                VehicleBookingRow(
                  available: false,
                  label: "CAB 6",
                  phoneNumber: "9704703743",
                  driverName: "John DOe",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          LongButton(
            color: Style.themeGreen,
            onPressed: () {
              Navigator.pop(context);
            },
            shadow: true,
            label: "Proceed",
            labelColor: Colors.white,
          )
        ],
      ),
    );
  }
}
