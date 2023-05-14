



import 'package:flutter/material.dart';
import '../../core/utils/strings_manager.dart';

class Routes {
  static const String initialRoute = '/';
         // todo add your routes here

}

class RoutesManager {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
       // todo implement the routes
      default:
        return undefinedRoute();
    }
  }


  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (context) =>   const Scaffold(
              body: Center(
                child: Text(StringsManager.noRouteFound), // todo
              ),
            ),
         );
  }
}

