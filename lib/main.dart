import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'actions/search.dart';
import 'data/weather_api.dart';
import 'middleware/app_middleware.dart';
import 'models/index.dart';
import 'presentation/home_page.dart';
import 'reducer/reducer.dart';

void main() {
  final WeatherApi weatherApi = WeatherApi();
  final AppMiddleware middleware = AppMiddleware(weatherApi: weatherApi);
  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: middleware.middleware,
  );

  store.dispatch(Search(initialState.location));

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Weather App',
        home: HomePage(),
      ),
    );
  }
}
