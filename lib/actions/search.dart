import 'package:weather_app/models/index.dart';

class Search {
  Search(this.location);

  String location;
}

class SearchSuccessful {
  const SearchSuccessful(this.location, this.weather);

  final List<WeatherDay> weather;
  final String location;
}

class SearchError {
  const SearchError(this.error);

  final dynamic error;
}
