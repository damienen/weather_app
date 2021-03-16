part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder.location = 'Madrid';
    builder.isLoading = true;
    builder.isImperial = false;
    return builder.build();
  }

  AppState._();

  @nullable
  String get location;

  bool get isLoading;

  bool get isImperial;

  @nullable
  BuiltList<WeatherDay> get weather;
}
