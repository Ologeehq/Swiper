import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/authentication/presentation/views/authentication_action_view.dart';
import 'features/authentication/presentation/views/login_view.dart';
import 'features/authentication/presentation/views/register_driver_view.dart';
import 'features/authentication/presentation/views/register_rider_view.dart';
import 'driver_dashboard.dart';
import 'views/rider/rider_home_page.dart';

class Router {
  static Route router(RouteSettings route) {
    switch (route.name) {
//!- Dashboard Route
      case '/rider':
        return CupertinoPageRoute(builder: (_) => RiderDashboard());
        break;

      case '/driver':
        return CupertinoPageRoute(builder: (_) => DriverDashboard());
        break;

//!- Authentication Routes
      case '/authentication':
        return MaterialPageRoute(builder: (_) => SelectRegisterTypeView());
        break;

      case '/authentication/registerRider':
        return MaterialPageRoute(builder: (_) => RegisterRiderView());
        break;

      case '/authentication/registerDriver':
        return MaterialPageRoute(builder: (_) => RegisterDriverView());
        break;

      case '/authentication/login':
        return CupertinoPageRoute(builder: (_) => LoginView());
        break;

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
              body: Center(
            child: Text('Error 404. The route you requested does not exist',
                style: TextStyle(fontSize: 40)),
          ));
        });
    }
  }
}
