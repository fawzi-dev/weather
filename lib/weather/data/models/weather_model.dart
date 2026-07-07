import 'package:weather/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required super.id,
    required super.name,
    required super.temp,
    required super.description,
    required super.pressure,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'],
      name: json['name'],
      temp: json['main']['temp'],
      description: json['weather'][0]['description'],
      pressure: json['main']['pressure'],
    );
  }
}
