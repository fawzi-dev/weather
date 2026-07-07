import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource remoteDataSource;
  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather?> getWeather(String city) async {
    return await remoteDataSource.getWeather(city);
  }
}
