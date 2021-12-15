import 'package:flutter/material.dart';
import 'package:tradestmt_web/design_system.dart';
import 'package:tradestmt_web/screens/home/home_view.dart';
import 'package:tradestmt_web/screens/home/home_viewmodel.dart';
import 'package:tradestmt_web/screens/signin/signin_view.dart';
import 'package:tradestmt_web/screens/signin/signin_viewmodel.dart';
import 'package:tradestmt_web/screens/signin/signup_view.dart';
import 'package:tradestmt_web/screens/signin/signup_viewmodel.dart';

class AppRouter {
  Route<dynamic>? route(RouteSettings settings) {
    final arguments = settings.arguments as Map<String, dynamic>? ?? {};

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Signin(viewModel: SigninViewModel()),
        );
      case '/design_system':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => DesignSystem(),
        );
      case '/signup':
        final count = arguments['count'] as int?;

        if (count == null) {
          throw Exception('Route ${settings.name} requires a count');
        }

        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Signup(
            viewModel: SignupViewModel(),
          ),
        );
      case '/home':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Home(viewModel: HomeViewModel(arguments)),
        );
      default:
        throw Exception('Route ${settings.name} not implemented');
    }
  }
}