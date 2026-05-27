import 'package:maauu/feature/weather/data/model/weather_response.dart';
import 'package:maauu/feature/weather/domain/model/weather_info.dart';

class WeatherMapper {
  static List<WeatherInfo> fromResponse(WeatherResponse response) {
    final location = response.records.location.first;
    final elements = {
      for (final e in location.weatherElement) e.elementName: e,
    };

    final wx = elements['Wx']!;
    final pop = elements['PoP']!;
    final minT = elements['MinT']!;
    final maxT = elements['MaxT']!;
    final ci = elements['CI']!;

    return List.generate(wx.time.length, (i) {
      return WeatherInfo(
        locationName: location.locationName,
        description: wx.time[i].parameter.parameterName,
        weatherCode: wx.time[i].parameter.parameterValue ?? '',
        rainProbability: pop.time[i].parameter.parameterName,
        minTemperature: minT.time[i].parameter.parameterName,
        maxTemperature: maxT.time[i].parameter.parameterName,
        comfort: ci.time[i].parameter.parameterName,
        startTime: wx.time[i].startTime ?? '',
        endTime: wx.time[i].endTime ?? '',
      );
    });
  }
}
