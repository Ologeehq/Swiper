import 'package:flutter/material.dart';

class Router {
  static Route router(RouteSettings route) {
    switch (route.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Placeholder());
        break;

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
              body: Center(
            child: Text('Error 404. The route you requested does not exist'),
          ));
        });
    }
  }
}
