import 'package:dio/dio.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeather(String city);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeather(String city) async {
    try {
      final response = await Dio().get(
        '${AppConstants.baseUrl}/weather',
        queryParameters: {'q': city, 'appid': AppConstants.apiKey},
      );
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
