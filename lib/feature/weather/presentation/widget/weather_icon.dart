import 'package:flutter/material.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({
    super.key,
    required this.weatherCode,
    this.size = 40,
  });

  final String weatherCode;
  final double size;

  static IconData _iconFromCode(String code) {
    final value = int.tryParse(code) ?? 0;
    return switch (value) {
      1 => Icons.wb_sunny,
      2 || 3 => Icons.wb_cloudy,
      4 || 5 || 6 || 7 => Icons.cloud,
      8 || 9 || 10 || 11 || 12 || 13 || 14 => Icons.grain,
      15 || 16 || 17 || 18 => Icons.thunderstorm,
      19 || 20 || 21 || 22 => Icons.ac_unit,
      23 || 24 || 25 || 26 || 27 || 28 => Icons.foggy,
      29 || 30 || 31 || 32 || 33 || 34 || 35 || 36 || 37 || 38 || 39 ||
      40 ||
      41 ||
      42 =>
        Icons.water_drop,
      _ => Icons.wb_cloudy,
    };
  }

  static Color _colorFromCode(String code) {
    final value = int.tryParse(code) ?? 0;
    return switch (value) {
      1 => Colors.orange,
      2 || 3 => Colors.amber,
      4 || 5 || 6 || 7 => Colors.blueGrey,
      8 || 9 || 10 || 11 || 12 || 13 || 14 => Colors.blue,
      15 || 16 || 17 || 18 => Colors.deepPurple,
      19 || 20 || 21 || 22 => Colors.lightBlue,
      23 || 24 || 25 || 26 || 27 || 28 => Colors.grey,
      _ => Colors.blue,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      _iconFromCode(weatherCode),
      size: size,
      color: _colorFromCode(weatherCode),
    );
  }
}
