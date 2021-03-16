part of models;

abstract class WeatherDay implements Built<WeatherDay, WeatherDayBuilder> {
  factory WeatherDay([void Function(WeatherDayBuilder b) updates]) = _$WeatherDay;

  factory WeatherDay.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  WeatherDay._();

  int get id;

  String get weather_state_name;

  String get weather_state_abbr;

  String get applicable_date;

  double get min_temp;

  double get max_temp;

  static Serializer<WeatherDay> get serializer => _$weatherDaySerializer;
}
