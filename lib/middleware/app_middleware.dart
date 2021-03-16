import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/actions/change_unit.dart';
import 'package:weather_app/actions/refresh.dart';
import 'package:weather_app/actions/search.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/models/index.dart';

class AppMiddleware {
  const AppMiddleware({@required WeatherApi weatherApi})
      : assert(weatherApi != null),
        _weatherApi = weatherApi;

  final WeatherApi _weatherApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[_changeUnit, _refresh, _search];
  }

  void _changeUnit(Store<AppState> store, dynamic action, NextDispatcher next) {
    next(action);
    if (action is ChangeUnit) {
      try {
        const ChangeUnitSuccessful successful = ChangeUnitSuccessful();
        store.dispatch(successful);
      } catch (e) {
        final ChangeUnitError error = ChangeUnitError(e);
        store.dispatch(error);
      }
    }
  }

  Future<void> _refresh(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is Refresh) {
      try {
        final List<WeatherDay> weather = await _weatherApi.getWeather(store.state.location);
        final RefreshSuccessful successful = RefreshSuccessful(weather);
        store.dispatch(successful);
      } catch (e) {
        final RefreshError error = RefreshError(e);
        store.dispatch(error);
      }
    }
  }

  Future<void> _search(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is Search) {
      try {
        final List<WeatherDay> weather = await _weatherApi.getWeather(action.location);

        final SearchSuccessful successful = SearchSuccessful(action.location, weather);
        store.dispatch(successful);
      } catch (e) {
        final SearchError error = SearchError(e);
        store.dispatch(error);
      }
    }
  }
}
