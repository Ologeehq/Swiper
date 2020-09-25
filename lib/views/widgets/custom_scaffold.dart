import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class SwiparScaffold extends StatelessWidget {
  final Widget body;

  const SwiparScaffold({Key key, this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      child: Scaffold(
        endDrawer: AppDrawer(),
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
