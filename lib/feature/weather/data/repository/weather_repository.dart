import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:maauu/feature/weather/data/model/weather_response.dart';

part 'weather_repository.g.dart';

class WeatherRepository {
  WeatherRepository(this._dio);

  final Dio _dio;

  static const _baseUrl = 'https://opendata.cwa.gov.tw/api';
  static const _endpoint = '/v1/rest/datastore/F-C0032-001';
  static const _apiKey = String.fromEnvironment('API_KEY');

  Future<WeatherResponse> getWeather(String locationName) async {
    try {
      final response = await _dio.get(
        '$_baseUrl$_endpoint',
        queryParameters: {
          'Authorization': _apiKey,
          'locationName': locationName,
        },
      );

      if (response.statusCode != 200) {
        throw WeatherException('伺服器錯誤：${response.statusCode}');
      }

      final data = response.data as Map<String, dynamic>;
      final weatherResponse = WeatherResponse.fromJson(data);

      if (weatherResponse.records.location.isEmpty) {
        throw WeatherException('查無「$locationName」的天氣資料');
      }

      return weatherResponse;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw WeatherException('連線逾時，請檢查網路狀態');
      }
      if (e.type == DioExceptionType.connectionError) {
        throw WeatherException('網路連線失敗，請檢查網路設定');
      }
      if (e.response?.statusCode == 401) {
        throw WeatherException('API 授權失敗，請檢查 API Key');
      }
      throw WeatherException('網路錯誤：${e.message}');
    } on FormatException {
      throw WeatherException('資料解析錯誤');
    } on TypeError {
      throw WeatherException('資料格式不正確');
    }
  }
}

class WeatherException implements Exception {
  WeatherException(this.message);
  final String message;

  @override
  String toString() => message;
}

@riverpod
Dio dio(Ref ref) {
  return Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
}

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepository(ref.watch(dioProvider));
}
