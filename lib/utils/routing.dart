import 'package:chat_app_ui/utils/route.dart';
import 'package:chat_app_ui/view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routing {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.HomeView:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Text("no page found"),
          );
        });
    }
  }
}
