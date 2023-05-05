import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:property_track/constants.dart';
import 'package:property_track/pages/splash_page.dart';
import 'package:property_track/router/customroute.dart';

class AppRouter {
  static dynamic route() {
    return {
      AppRoutes.SplashPage: (BuildContext context) => SplashPage(),
    };
  }

  static onGenerateRoute(RouteSettings settings) {
    final List<String> pathElements = settings.name!.split('/');
    if (pathElements[0] != '' || pathElements.length <= 1) {
      return null;
    }

    switch (pathElements[1]) {
      case AppRoutes.WelcomePage:
        return CustomRoute(builder: (BuildContext context) => Placeholder());
      default:
        return onUnknownRoute(settings);
    }
  }

  static onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: Center(child: Text("Unknown Route")),
        );
      },
    );
  }
}
