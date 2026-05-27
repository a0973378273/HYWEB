import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:maauu/feature/weather/data/repository/weather_repository.dart';
import 'package:maauu/feature/weather/domain/mapper/weather_mapper.dart';
import 'package:maauu/feature/weather/presentation/provider/weather_state.dart';

part 'weather_notifier.g.dart';

@riverpod
class WeatherNotifier extends _$WeatherNotifier {
  @override
  WeatherState build() => const WeatherState.initial();

  Future<void> searchWeather(String locationName) async {
    final trimmed = locationName.trim();
    if (trimmed.isEmpty) {
      state = const WeatherState.error('請輸入城市名稱');
      return;
    }

    state = const WeatherState.loading();

    try {
      final repository = ref.read(weatherRepositoryProvider);
      final response = await repository.getWeather(trimmed);
      final weatherList = WeatherMapper.fromResponse(response);
      state = WeatherState.loaded(weatherList);
    } on WeatherException catch (e) {
      state = WeatherState.error(e.message);
    } catch (e) {
      state = WeatherState.error('發生未知錯誤：$e');
    }
  }
}
