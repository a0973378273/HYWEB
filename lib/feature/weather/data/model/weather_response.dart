import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required String success,
    required Records records,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
class Records with _$Records {
  const factory Records({
    required String datasetDescription,
    required List<Location> location,
  }) = _Records;

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required String locationName,
    required List<WeatherElement> weatherElement,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class WeatherElement with _$WeatherElement {
  const factory WeatherElement({
    required String elementName,
    required List<TimeInfo> time,
  }) = _WeatherElement;

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);
}

@freezed
class TimeInfo with _$TimeInfo {
  const factory TimeInfo({
    String? startTime,
    String? endTime,
    required Parameter parameter,
  }) = _TimeInfo;

  factory TimeInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeInfoFromJson(json);
}

@freezed
class Parameter with _$Parameter {
  const factory Parameter({
    required String parameterName,
    String? parameterValue,
    String? parameterUnit,
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}
