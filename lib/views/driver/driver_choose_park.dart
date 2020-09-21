import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
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
  int pageIndex = 0;

  chooseARide(int index) {
    List<Widget> chooseARidePages = [
      ChooseLocation(
        subtitle: widget.subtitle,
        onTap: () {
          setState(() {
            pageIndex = 1;
          });
          showModalBottomSheetCustom(
              context: context, builder: (ctx) => chooseARide(pageIndex));
        },
      ),
      ChooseARidePage(),
    ];
    return chooseARidePages[index];
  }

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
              onPressed: () => showModalBottomSheetCustom(
                  context: context, builder: (ctx) => chooseARide(pageIndex)),
              label: "Choose a Park",
            )
          ],
        )
      ],
    );
  }
}

class ChooseLocation extends StatefulWidget {
  final String subtitle;
  final Function onTap;

  const ChooseLocation({Key key, this.subtitle, this.onTap}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
      height: _size * 0.8,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Choose Park",
            style: Style.headingTextStyle.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.subtitle ?? "",
            style: Style.subTitle1TextStyle.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.24),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ]),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.25),
                  fontSize: 20,
                ),
                fillColor: Color(0xFFFAFAFA),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  List texts = List.generate(7, (int place) {
                    return InkWell(
                      onTap: widget.onTap,
                      child: Text(
                        "Oke odo",
                        textAlign: TextAlign.center,
                        style: Style.titleTextStyle.copyWith(
                          color: Style.themeBlack,
                        ),
                      ),
                    );
                  });
                  return texts[index];
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: 6),
          ),
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
          Text(
            "1234 is available",
            textAlign: TextAlign.center,
            style: Style.headingTextStyle.copyWith(
              color: Style.themeBlack,
            ),
          ),
          Text(
            "Currently loading",
            style: Style.headingTextStyle,
          ),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 8),
                itemBuilder: (context, index) {
                  List texts = List.generate(6, (int place) {
                    return InkWell(
                      // onTap: () {
                      //   showBottomSheet(
                      //       context: context, builder: (context) => ());
                      // },
                      child: Seats(name: null, number: null, seat: null),
                    );
                  });
                  return texts[index];
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 6),
          ),
          LongButton(
            onPressed: () {},
            label: "Enroute",
            color: Style.themeGreen,
          )
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

  const Seats(
      {Key key,
      @required this.name,
      @required this.number,
      @required this.seat,
      this.seatColor = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: seatColor ? Colors.grey : Style.themeBlue,
              width: 101,
              height: 45,
              child: Center(
                child: Text(
                  "Seat ",
                  style: Style.body1TextStyle,
                ),
              ),
            )),
        SizedBox(width: 8),
        Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              height: 45,
              color: Color(0xffF4F5F6),
              child: Column(
                children: [
                  Expanded(child: Text("Passenger's Name: $name")),
                  Expanded(child: Text("Phone No: $number"))
                ],
              ),
            ))
      ],
    ));
  }
}
