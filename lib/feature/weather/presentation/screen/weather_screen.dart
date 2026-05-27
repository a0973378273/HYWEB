import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maauu/feature/weather/presentation/provider/weather_notifier.dart';
import 'package:maauu/feature/weather/presentation/provider/weather_state.dart';
import 'package:maauu/feature/weather/presentation/widget/weather_data_widget.dart';
import 'package:maauu/feature/weather/presentation/widget/weather_error_widget.dart'
    as app;
import 'package:maauu/feature/weather/presentation/widget/weather_initial_widget.dart';
import 'package:maauu/feature/weather/presentation/widget/weather_loading_widget.dart';

class WeatherScreen extends ConsumerStatefulWidget {
  const WeatherScreen({super.key});

  @override
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen> {
  final _controller = TextEditingController();
  String _lastQuery = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _search() {
    final query = _controller.text.trim();
    if (query.isEmpty) return;
    _lastQuery = query;
    ref.read(weatherNotifierProvider.notifier).searchWeather(query);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weatherNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('天氣預報'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: '請輸入城市名稱',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                    ),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (_) => _search(),
                  ),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: _search,
                  child: const Text('確認'),
                ),
              ],
            ),
          ),
          Expanded(
            child: switch (state) {
              WeatherInitial() => const WeatherInitialWidget(),
              WeatherLoading() => const WeatherLoadingWidget(),
              WeatherLoaded(:final weatherList) =>
                WeatherDataWidget(weatherList: weatherList),
              WeatherError(:final message) => app.WeatherErrorWidget(
                  message: message,
                  onRetry: () => ref
                      .read(weatherNotifierProvider.notifier)
                      .searchWeather(_lastQuery),
                ),
            },
          ),
        ],
      ),
    );
  }
}
