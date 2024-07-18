import 'package:flutter/material.dart';
import 'package:new_landing_page/bottom_bar.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MyBottomNavBar.routeName:
      return MaterialPageRoute(builder: (context) => const MyBottomNavBar());

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Something gone wrong'),
          ),
        ),
      );
  }
}
