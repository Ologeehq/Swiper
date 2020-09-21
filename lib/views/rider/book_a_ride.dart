import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipar/views/rider/select_ride.dart';
import 'package:swipar/views/utilities/styles.dart' as Style;
import 'package:swipar/views/widgets/custom_drawer.dart';
import 'package:swipar/views/widgets/menu_button.dart';

class BookARideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppDrawer(),
      body: RideBookingBody(
        subtitle: "Choose your destination",
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
        },
      ),
      chooseARidePage(),
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
        chooseARide(pageIndex),
      ],
    );
  }
}

class ChooseLocation extends StatelessWidget {
  final String subtitle;
  final Function onTap;

  const ChooseLocation({Key key, this.subtitle, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
      height: 280,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Where are you going?",
            style: Style.headingTextStyle.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtitle ?? "",
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
                      onTap: onTap,
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

chooseARidePage() {
  return Container(
    padding: EdgeInsets.only(top: 20, bottom: 10),
    height: 280,
    child: Column(
      children: [
        Text(
          "Choose a ride",
          textAlign: TextAlign.center,
          style: Style.headingTextStyle.copyWith(
            color: Style.themeBlack,
          ),
        ),
        Divider(
          height: 40,
        ),
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                List texts = List.generate(6, (int place) {
                  return InkWell(
                    onTap: () {
                      showBottomSheet(
                          context: context, builder: (context) => ChooseABus());
                    },
                    child: Text(
                      "Book a bus",
                      textAlign: TextAlign.center,
                      style: Style.titleTextStyle.copyWith(
                        color: Style.themeBlack,
                      ),
                    ),
                  );
                });
                return texts[index];
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 6),
        ),
      ],
    ),
  );
}
