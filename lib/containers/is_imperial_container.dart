import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/index.dart';

class IsImperialContainer extends StatelessWidget {
  const IsImperialContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        print(store.state == null);
        return store.state.isImperial;
      },
      builder: builder,
    );
  }
}
