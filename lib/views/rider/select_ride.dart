import 'package:flutter/material.dart';

class ChooseABus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      color: Colors.black.withOpacity(0.2),
      width: double.infinity,
      child: Container(
        color: Colors.white,
        height: 400,
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                            color: Colors.red,
                            child: Column(
                              children: [Text("fgdtgtg")],
                            ),
                          ));
                },
                child: Text("Uhiujheoguheoijg")),
          ],
        ),
      ),
    );
  }
}
