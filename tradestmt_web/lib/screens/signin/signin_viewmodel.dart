import 'package:flutter/cupertino.dart';
import 'package:rxdart/subjects.dart';
import 'package:tradestmt_web/models/login_user_model.dart';
import 'package:tradestmt_web/screens/app_routes.dart';
import 'package:tradestmt_web/screens/viewmodel.abs.dart';

class SigninState {

}

class SigninViewModel extends ViewModel{
  final _stateSubject = BehaviorSubject<SigninState>.seeded(SigninState());

  Stream<SigninState> get state => _stateSubject;

  final _routesSubject = PublishSubject<AppRouteSpec>();

  Stream<AppRouteSpec> get routes => _routesSubject;

  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Map<String, dynamic>? map;

  void routeToHome() {
    Map<String, dynamic> map = {};
    map['account'] = accountController.text;
    map['password'] = passwordController.text;

    _routesSubject.add(
      AppRouteSpec(name: '/home',
      arguments: map
      ),
    );
  }

  void routeToDesignSystem() {
    _routesSubject.add(
      AppRouteSpec(
        name: '/design_system',
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _stateSubject.close();
    _routesSubject.close();
  }
}
