import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weather_app/actions/change_unit.dart';
import 'package:weather_app/actions/refresh.dart';
import 'package:weather_app/actions/search.dart';
import 'package:weather_app/containers/is_imperial_container.dart';
import 'package:weather_app/containers/is_loading_container.dart';
import 'package:weather_app/containers/location_container.dart';
import 'package:weather_app/containers/weather_container.dart';
import 'package:weather_app/models/index.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final TextEditingController searchBar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WeatherContainer(builder: (BuildContext context, BuiltList<WeatherDay> weather) {
      return IsLoadingContainer(builder: (BuildContext context, bool isLoading) {
        return LocationContainer(builder: (BuildContext context, String location) {
          return IsImperialContainer(builder: (BuildContext context, bool isImperial) {
            return Scaffold(
              appBar: AppBar(
                actions: <Widget>[
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 32, top: 4, right: 4, bottom: 4),
                        child: Container(
                          width: 100,
                          child: TextField(
                            controller: searchBar,
                            style: const TextStyle(fontSize: 20),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (searchBar.text.isNotEmpty) {
                                    StoreProvider.of<AppState>(context).dispatch(Search(searchBar.text.trim()));
                                  } else {
                                    StoreProvider.of<AppState>(context).dispatch(Search(''));
                                  }
                                },
                              ),
                            ),
                            onSubmitted: (String value) {
                              if (searchBar.text.isNotEmpty) {
                                StoreProvider.of<AppState>(context).dispatch(Search(searchBar.text.trim()));
                              } else {
                                StoreProvider.of<AppState>(context).dispatch(Search(''));
                              }
                            },
                          ),
                        )),
                  ),
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(Refresh());
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(ChangeUnit());
                    },
                    child: Text(
                      isImperial ? 'F' : 'C',
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
              body: ListView.builder(
                itemCount: weather != null ? weather.length : 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(44.0),
                        child: Text(
                          'Weather in $location',
                          style: const TextStyle(fontSize: 26),
                        ),
                      ),
                    );
                  } else {
                    return Card(
                      elevation: 4.0,
                      child: SizedBox(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(isLoading ? 'Loading' : weather[index - 1].applicable_date),
                            SizedBox(
                              height: 66,
                              child: Image.network(isLoading
                                  ? 'https://www.metaweather.com//static/img/weather/png/c.png'
                                  : 'https://www.metaweather.com//static/img/weather/png/${weather[index - 1].weather_state_abbr}.png'),
                            ),
                            Text(isLoading ? 'Loading' : weather[index - 1].weather_state_name),
                            Text(isLoading
                                ? 'Loading'
                                : (!isImperial
                                    ? '${weather[index - 1].min_temp.round()} - ${weather[index - 1].max_temp.round()} °C'
                                    : '${(weather[index - 1].min_temp * 9 / 5 + 32).round()} - ${(weather[index - 1].max_temp.round() * 9 / 5 + 32).round()} °F')),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            );
          });
        });
      });
    });
  }
}
