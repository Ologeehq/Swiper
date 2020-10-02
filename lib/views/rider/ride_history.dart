import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/custom_scaffold.dart';
import 'package:swipar/views/widgets/menu_button.dart';
import 'package:swipar/views/widgets/no_border_radius_textfield.dart';

class RideHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwiparScaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: MenuButton(
              aligned: false,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Ride History",
            style: Style.headingTextStyle,
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 8,
            ),
            child: NoBorderRadiusTextField(
              label: "Search",
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                List itemList = List.generate(6, (index) => RideHistoryItem());
                return itemList[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RideHistoryItem extends StatelessWidget {
  final String date;
  final String time;
  final int price;

  RideHistoryItem({Key key, this.date, this.time, this.price = 200})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          color: Color(0xFFF4F5F6),
          padding: EdgeInsets.fromLTRB(25, 8, 25, 8),
          child: Row(
            children: [
              Text(
                date ?? "Aug,29 2020",
                style: Style.subTitle1TextStyle,
              ),
              Text(
                time ?? "09:00PM",
                style: Style.subTitle1TextStyle,
              ),
              Spacer(),
              Text(
                "N$price",
                style: Style.headingTextStyle,
              ),
            ],
          ),
        ),
        paddedText(
          text: "Pick up Location",
          top: 15,
          style: Style.titleTextStyle,
        ),
        paddedText(
          text: "1901 Thornridge Cir. Shiloh, Hawaii",
          style: Style.subTitle2TextStyle,
        ),
        paddedText(
          text: "Drop off Location",
          top: 15,
          style: Style.titleTextStyle,
        ),
        paddedText(
          text: "1901 Thornridge Cir. Shiloh, Hawaii",
          style: Style.subTitle2TextStyle,
          bottom: 10,
        ),
      ],
    );
  }
}

paddedText({String text, style, double top = 0, double bottom = 0}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(35, top, 35, bottom),
    child: Text(
      text,
      style: style,
    ),
  );
}
