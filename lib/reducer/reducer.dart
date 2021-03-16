import 'package:weather_app/actions/change_unit.dart';
import 'package:weather_app/actions/refresh.dart';
import 'package:weather_app/actions/search.dart';
import 'package:weather_app/models/index.dart';

AppState reducer(AppState state, dynamic action) {
  print('action: $action');
  final AppStateBuilder builder = state.toBuilder();

  if (action is Refresh) {
    builder.isLoading = true;
  } else if (action is RefreshSuccessful) {
    builder.weather.clear();
    builder.weather.addAll(action.weather);
    builder.isLoading = false;
  } else if (action is RefreshError) {
    builder.isLoading = false;
  } else if (action is ChangeUnit) {
    builder.isLoading = true;
  } else if (action is ChangeUnitSuccessful) {
    builder.isImperial = !builder.isImperial;
    builder.isLoading = false;
  } else if (action is ChangeUnitError) {
    builder.isLoading = false;
  } else if (action is Search) {
    builder.isLoading = true;
  } else if (action is SearchSuccessful) {
    builder.location = action.location;
    builder.weather.clear();
    builder.weather.addAll(action.weather);
    builder.isLoading = false;
  } else if (action is SearchError) {
    builder.isLoading = false;
  }
  return builder.build();
}
