import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/vehicle_booking_row.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';

class VehiclePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
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
          Expanded(
            child: ListView(
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
