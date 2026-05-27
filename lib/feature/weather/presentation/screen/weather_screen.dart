import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maauu/feature/weather/presentation/provider/weather_notifier.dart';
import 'package:maauu/feature/weather/presentation/provider/weather_state.dart';
import 'package:maauu/feature/weather/presentation/widget/weather_data_widget.dart';
import 'package:maauu/feature/weather/presentation/widget/weather_error_widget.dart'
    as app;
import 'package:maauu/feature/weather/presentation/widget/weather_initial_widget.dart';
import 'package:maauu/feature/weather/presentation/widget/weather_loading_widget.dart';

const _cities = [
  '臺北市',
  '新北市',
  '桃園市',
  '臺中市',
  '臺南市',
  '高雄市',
  '基隆市',
  '新竹縣',
  '新竹市',
  '苗栗縣',
  '彰化縣',
  '南投縣',
  '雲林縣',
  '嘉義縣',
  '嘉義市',
  '屏東縣',
  '宜蘭縣',
  '花蓮縣',
  '臺東縣',
  '澎湖縣',
  '金門縣',
  '連江縣',
];

class WeatherScreen extends ConsumerStatefulWidget {
  const WeatherScreen({super.key});

  @override
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  String _lastQuery = '';
  bool _showSuggestions = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
    _focusNode.addListener(() {
      setState(() {
        _showSuggestions = _focusNode.hasFocus && _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _showSuggestions = _focusNode.hasFocus && _controller.text.isNotEmpty;
    });
  }

  List<String> get _filteredCities {
    final query = _controller.text.trim();
    if (query.isEmpty) return [];
    return _cities.where((city) => city.contains(query)).toList();
  }

  void _search() {
    final query = _controller.text.trim();
    if (query.isEmpty) return;
    _lastQuery = query;
    _focusNode.unfocus();
    setState(() => _showSuggestions = false);
    ref.read(weatherNotifierProvider.notifier).searchWeather(query);
  }

  void _selectCity(String city) {
    _controller.text = city;
    _lastQuery = city;
    _focusNode.unfocus();
    setState(() => _showSuggestions = false);
    ref.read(weatherNotifierProvider.notifier).searchWeather(city);
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
                    focusNode: _focusNode,
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
          if (_showSuggestions && _filteredCities.isNotEmpty)
            Container(
              constraints: const BoxConstraints(maxHeight: 200),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredCities.length,
                itemBuilder: (context, index) {
                  final city = _filteredCities[index];
                  return ListTile(
                    dense: true,
                    leading: const Icon(Icons.location_city, size: 20),
                    title: Text(city),
                    onTap: () => _selectCity(city),
                  );
                },
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
