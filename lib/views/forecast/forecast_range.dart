import 'package:flutter/material.dart';

/// 天気行の気温範囲
class ForecastRange extends StatelessWidget {
  final int tempMin;
  final int tempMax;

  const ForecastRange({super.key, required this.tempMin, required this.tempMax});

  @override
  Widget build(BuildContext context) {
    final rangeLabel = '($tempMin-$tempMax)';
    return Text(rangeLabel, style: const TextStyle(fontSize: 14, color: Colors.grey));
  }
}
