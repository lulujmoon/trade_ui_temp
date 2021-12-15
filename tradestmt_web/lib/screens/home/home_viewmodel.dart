import 'package:rxdart/subjects.dart';
import 'package:tradestmt_web/screens/app_routes.dart';
import 'package:tradestmt_web/screens/viewmodel.abs.dart';


class HomeState {
  final Map<String, dynamic>? map;

  HomeState({
    this.map
  });

}

class HomeViewModel extends ViewModel {
  final _stateSubject = BehaviorSubject<HomeState>.seeded(HomeState());

  Stream<HomeState> get state => _stateSubject;

  final _routesSubject = PublishSubject<AppRouteSpec>();

  Stream<AppRouteSpec> get routes => _routesSubject;

  HomeViewModel(Map<String, dynamic> map) {
    _stateSubject.add(HomeState(map: map));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _stateSubject.close();
    _routesSubject.close();
  }
}