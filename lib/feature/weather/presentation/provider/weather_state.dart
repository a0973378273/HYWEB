import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maauu/feature/weather/domain/model/weather_info.dart';

part 'weather_state.freezed.dart';

@freezed
sealed class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = WeatherInitial;
  const factory WeatherState.loading() = WeatherLoading;
  const factory WeatherState.loaded(List<WeatherInfo> weatherList) =
      WeatherLoaded;
  const factory WeatherState.error(String message) = WeatherError;
}
