import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 天気行の天気と降水確率
class ForecastWeather extends StatelessWidget {
  final String jmaWeatherImgCode;
  final List<int> pop;

  const ForecastWeather({super.key, required this.jmaWeatherImgCode, required this.pop});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/weather_icons/$jmaWeatherImgCode',
          semanticsLabel: 'weather icon',
          width: 36,
          height: 36,
        ),
        const SizedBox(width: 4),
        Text(
          '${pop.reduce(max)}%',
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
