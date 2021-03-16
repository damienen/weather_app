import 'package:built_collection/built_collection.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/index.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<BuiltList<WeatherDay>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BuiltList<WeatherDay>>(
      converter: (Store<AppState> store) {
        return store.state.weather;
      },
      builder: builder,
    );
  }
}
