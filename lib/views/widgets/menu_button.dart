import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final bool aligned;

  const MenuButton({Key key, this.aligned = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return aligned
        ? Align(
            alignment: Alignment.centerRight,
            child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: ImageIcon(AssetImage("assets/menu-icon.png"))),
          )
        : ImageIcon(AssetImage("assets/menu-icon.png"));
  }
}
