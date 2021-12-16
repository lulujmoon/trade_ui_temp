import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trade_ui/trade_ui.dart';
import 'package:tradestmt_web/routes.dart';
import 'package:tradestmt_web/screens/view.abs.dart';

import 'design_system.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();
  // This widget is the root of your application.

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kcPrimaryColor,
      ),
      navigatorObservers: [routeObserver],
      initialRoute: '/',
      onGenerateRoute: _router.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
