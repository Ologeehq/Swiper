import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipar/views/driver/make_available.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;
import 'package:swipar/views/widgets/custom_drawer.dart';
import 'package:swipar/views/widgets/menu_button.dart';
import 'package:swipar/views/widgets/theme_long_button.dart';
import 'package:swipar/views/widgets/custom_bottomsheet.dart';

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

class RideBookingBody extends StatefulWidget {
  const RideBookingBody({
    Key key,
    this.subtitle,
  }) : super(key: key);
  final String subtitle;

  @override
  _RideBookingBodyState createState() => _RideBookingBodyState();
}

class _RideBookingBodyState extends State<RideBookingBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/dummymap.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  color: Colors.black.withOpacity(0.25),
                                  blurRadius: 4,
                                ),
                              ]),
                          child: MenuButton(
                            aligned: false,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            LongButton(
              color: Colors.white,
              onPressed: () {
                showModalBottomSheetCustom(
                    context: context, builder: (ctx) => ChooseAParkPage());
              },
              label: "Choose a Park",
            )
          ],
        )
      ],
    );
  }
}


class ChooseAParkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: _size * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Text(
                  "x",
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "FROM: Unilorin",
            textAlign: TextAlign.center,
            style: Style.headingTextStyle.copyWith(
              color: Style.themeBlack,
            ),
          ),
          Text("TO: Terminus", style: Style.headingTextStyle),
          SizedBox(
            height: 20,
          ),
          Text("Available CABS"),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 8),
                itemBuilder: (context, index) {
                  List texts = List.generate(6, (int place) {
                    return InkWell(
                      onTap: () {},
                      child: Seats(
                          name: "Cab Driver's Name :John Doe",
                          number: "090273483749",
                          seat: " CAB ${index + 1}"),
                    );
                  });
                  return texts[index];
                },
                itemCount: 6),
          ),
          LongButton(
            shadow: true,
            labelColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
              showModalBottomSheetCustom(
                  context: context, builder: (ctx) => ChooseARidePage());
            },
            label: "Proceed",
            color: Style.themeGreen,
          )
        ],
      ),
    );
  }
}

class ChooseARidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: _size * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Text(
                  "x",
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "1234 is available",
            textAlign: TextAlign.center,
            style: Style.headingTextStyle.copyWith(
              color: Style.themeBlack,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text("Currently loading", style: Style.titleTextStyle),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  List texts = List.generate(6, (int place) {
                    return InkWell(
                      // onTap: () {
                      //   showBottomSheet(
                      //       context: context, builder: (context) => ());
                      // },
                      child: Seats(
                          name: "Passenger's Name: John Doe",
                          number: "090273483749",
                          seat: "Seat ${index + 1}"),
                    );
                  });
                  return texts[index];
                },
                itemCount: 6),
          ),
          LongButton(
            shadow: true,
            labelColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
              showModalBottomSheetCustom(
                  context: context, builder: (ctx) => CompletedRide());
            },
            label: "Enroute",
            color: Style.themeGreen,
          )
        ],
      ),
    );
  }
}

class CompletedRide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: MediaQuery
          .of(context)
          .size
          .height * 0.4,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Text(
                  "x",
                  style: TextStyle(fontSize: 24),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Arrived Destination",
            textAlign: TextAlign.center,
            style: Style.headingTextStyle.copyWith(
              color: Style.themeBlack,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(child: Image.asset("assets/like.png")),
          Spacer(
            flex: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => DriverMakeAvailable()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Back to "),
                Text(
                  "Home",
                  style: TextStyle(color: Style.themeGreen),
                )
              ],
            ),
          ),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}

class Seats extends StatelessWidget {
  final String name;
  final String number;
  final String seat;
  final bool seatColor;

  const Seats({Key key,
    @required this.name,
      @required this.number,
      @required this.seat,
      this.seatColor = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: seatColor ? Colors.grey : Style.themeBlue,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                        ),
                      ]),
                  width: 101,
                  height: 45,
                  child: Center(
                    child: Text(
                      "$seat",
                      style: Style.body1TextStyle,
                    ),
                  ),
                )),
            SizedBox(width: 8),
            Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  height: 45,
                  color: Color(0xffF4F5F6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("$name")),
                      Expanded(child: Text("Phone No: $number"))
                    ],
                  ),
                ))
          ],
        ));
  }
}
