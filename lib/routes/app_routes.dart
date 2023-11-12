import 'package:flutter/material.dart';
import 'package:lab10/models/models.dart';
import 'package:lab10/screen/card_screen.dart';
import 'package:lab10/screen/home_screen.dart';


class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.house_siding_sharp,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.house_siding_sharp,
        name: 'card',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1':(BuildContext context) => const ListView1Screen(),
  //   'listview2':(BuildContext context) => const ListView2Screen(),
  //   'card':(BuildContext context) => const CardScreen(),
  //   'alert':(BuildContext context) => const AlertScreen(),
  //   'home':(BuildContext context) => const HomeScreen(),
  // };

  // static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  //   return MaterialPageRoute(builder: (context) => const AlertScreen());
  // }
}
