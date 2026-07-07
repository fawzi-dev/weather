import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

abstract class WeatherRepository implements BaseWeatherRepository {
  final RemoteDataSource remoteDataSource;
  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather?> getWeather(String city) async {
    return await remoteDataSource.getWeather(city);
  }
}
