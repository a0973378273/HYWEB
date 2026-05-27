import 'package:flutter/material.dart';
import 'package:maauu/feature/weather/domain/model/weather_info.dart';
import 'package:maauu/feature/weather/presentation/widget/weather_icon.dart';

class WeatherDataWidget extends StatelessWidget {
  const WeatherDataWidget({
    super.key,
    required this.weatherList,
  });

  final List<WeatherInfo> weatherList;

  @override
  Widget build(BuildContext context) {
    if (weatherList.isEmpty) return const SizedBox.shrink();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          weatherList.first.locationName,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        ...weatherList.map((info) => _WeatherCard(info: info)),
      ],
    );
  }
}

class _WeatherCard extends StatelessWidget {
  const _WeatherCard({required this.info});

  final WeatherInfo info;

  String _formatTime(String time) {
    if (time.length >= 16) {
      return time.substring(5, 16);
    }
    return time;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${_formatTime(info.startTime)} ~ ${_formatTime(info.endTime)}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                WeatherIcon(weatherCode: info.weatherCode),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        info.description,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      Text(
                        info.comfort,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Text(
                  '${info.minTemperature}°C ~ ${info.maxTemperature}°C',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.water_drop, size: 16, color: colorScheme.secondary),
                const SizedBox(width: 4),
                Text(
                  '降雨機率 ${info.rainProbability}%',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
