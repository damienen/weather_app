import 'package:weather_app/models/index.dart';

class Refresh {
  Refresh();
}

class RefreshSuccessful {
  const RefreshSuccessful(this.weather);

  final List<WeatherDay> weather;
}

class RefreshError {
  const RefreshError(this.error);

  final dynamic error;
}
