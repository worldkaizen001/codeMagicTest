// Class for fetching weather data (responsibility: network request)
import 'package:flutter/material.dart';

class WeatherService {
  Future<String> fetchWeather() async {
    // Imagine this function fetches weather data from an API
    return 'Sunny';
  }
}

// Class for representing weather data (responsibility: data model)
class WeatherModel {
  final String description;

  WeatherModel(this.description);
}

// Class for displaying weather data (responsibility: UI component)
class WeatherWidget extends StatelessWidget {
  final WeatherModel weather;

  WeatherWidget({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Text('Weather: ${weather.description}');
  }
}
