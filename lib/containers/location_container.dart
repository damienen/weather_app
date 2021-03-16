import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/index.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.location;
      },
      builder: builder,
    );
  }
}
