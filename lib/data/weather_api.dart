import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/index.dart';

class WeatherApi {
  Future<Location> _getLocation(String location) async {
    final http.Response response =
        await http.get(Uri.https('www.metaweather.com', 'api/location/search', <String, String>{'query': location}));
    final List<dynamic> list = jsonDecode(response.body);
    return list.map((dynamic json) => Location.fromJson(json)).toList()[0];
  }

  Future<List<WeatherDay>> getWeather(String location) async {
    final Location setLocation = await _getLocation(location);
    final http.Response response =
        await http.get(Uri.https('www.metaweather.com', 'api/location/' + setLocation.woeid.toString()));
    final Map<String, dynamic> mapp = jsonDecode(response.body);
    final List<dynamic> list = mapp['consolidated_weather'] as List<dynamic>;
    return list.map((dynamic json) => WeatherDay.fromJson(json)).toList();
  }
}
