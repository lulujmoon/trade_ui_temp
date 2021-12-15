import 'package:rxdart/subjects.dart';
import 'package:tradestmt_web/screens/app_routes.dart';
import 'package:tradestmt_web/screens/viewmodel.abs.dart';



class SignupState {

}

class SignupViewModel extends ViewModel {
  final _stateSubject = BehaviorSubject<SignupState>.seeded(SignupState());
  Stream<SignupState> get state => _stateSubject;

  final _routesSubject = PublishSubject<AppRouteSpec>();
  Stream<AppRouteSpec> get routes => _routesSubject;

  @override
  void dispose() {
    // TODO: implement dispose
    _stateSubject.close();
    _routesSubject.close();
  }
}