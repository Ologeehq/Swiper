import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class SwiparScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget appBar;

  const SwiparScaffold({Key key, this.body, this.appBar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      child: Scaffold(
        appBar: appBar,
        endDrawer: AppDrawer(),
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
