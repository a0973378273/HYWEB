import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_info.freezed.dart';

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required String locationName,
    required String description,
    required String weatherCode,
    required String rainProbability,
    required String minTemperature,
    required String maxTemperature,
    required String comfort,
    required String startTime,
    required String endTime,
  }) = _WeatherInfo;
}
