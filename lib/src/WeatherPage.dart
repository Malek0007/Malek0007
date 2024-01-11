import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: WeatherDetails(),
    );
  }
}

class WeatherDetails extends StatefulWidget {
  @override
  _WeatherDetailsState createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  final WeatherService _weatherService = WeatherService();
  Map<String, dynamic> _weatherData = {};

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    try {
      final result = await _weatherService.getWeather(
          "Ariana", "b421e77afd344831098b11ffa09c95dd");
      setState(() {
        _weatherData = result;
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Météo à ${_weatherData['name'] ?? ''}',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          _buildWeatherIcon(),
          SizedBox(height: 20.0),
          if (_weatherData.isNotEmpty) ...[
            Text(
              'Température: ${(_weatherData['main']['temp'] - 273.15).toStringAsFixed(2)}°C',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Description: ${_weatherData['weather'][0]['description']}',
              style: TextStyle(fontSize: 18.0),
            ),
          ] else ...[
            CircularProgressIndicator(),
          ],
        ],
      ),
    );
  }

  Widget _buildWeatherIcon() {
    if (_weatherData.isEmpty) {
      return CircularProgressIndicator();
    } else {
      final weatherCode = _weatherData['weather'][0]['id'];
      final isDayTime =
          _weatherData['weather'][0]['icon'].toString().contains('d');

      IconData weatherIcon;

      if (weatherCode >= 200 && weatherCode < 600) {
        weatherIcon = isDayTime
            ? WeatherIcons.day_cloudy_gusts
            : WeatherIcons.night_cloudy_gusts;
      } else if (weatherCode == 800) {
        weatherIcon =
            isDayTime ? WeatherIcons.day_sunny : WeatherIcons.night_clear;
      } else {
        weatherIcon =
            isDayTime ? WeatherIcons.day_cloudy : WeatherIcons.night_alt_cloudy;
      }

      return Icon(weatherIcon, size: 96.0, color: Colors.amber);
    }
  }
}

class WeatherService {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> getWeather(
      String cityName, String apiKey) async {
    final response = await _dio.get(
      'http://api.openweathermap.org/data/2.5/weather',
      queryParameters: {'q': cityName, 'appid': apiKey},
    );

    return response.data;
  }
}
