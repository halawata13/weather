import 'package:flutter/material.dart';
import 'package:weather/constants/color.dart';

/// 天気行の気温
class ForecastTemp extends StatelessWidget {
  final int? temp;
  final double? tempNormal;
  final Color color;

  const ForecastTemp({super.key, this.temp, this.tempNormal, required this.color});

  // 平年差を計算する
  String getNormalTempDiff(int? temp, double? normalTemp) {
    if (temp == null || normalTemp == null) {
      return '';
    }

    final diff = temp.toDouble() - normalTemp;
    return (diff >= 0 ? '+' : '') + diff.toStringAsFixed(1);
  }

  // 平年差に応じて色を返す
  TextStyle getNormalTempStyle(int? temp, double? normalTemp) {
    if (temp == null || normalTemp == null) {
      return const TextStyle(fontSize: 14, color: Colors.grey);
    }

    final diff = temp.toDouble() - normalTemp;
    if (diff > 3) {
      return const TextStyle(fontSize: 14, color: colorMax1, fontWeight: FontWeight.bold);
    } else if (diff > 1.5) {
      return const TextStyle(fontSize: 14, color: colorMax1);
    } else if (diff < -3) {
      return const TextStyle(fontSize: 14, color: colorMin1, fontWeight: FontWeight.bold);
    } else if (diff < -1.5) {
      return const TextStyle(fontSize: 14, color: colorMin1);
    } else {
      return const TextStyle(fontSize: 14, color: Colors.grey);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // 気温値
        Text(temp != null ? temp.toString() : '-', style: TextStyle(fontSize: 24, color: color)),

        const SizedBox(width: 2),

        // ℃
        Visibility(
          visible: temp != null,
          child: Container(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              '℃',
              style: TextStyle(fontSize: 14, color: color)
            ),
          ),
        ),

        const SizedBox(width: 8),

        // 平年差
        Visibility(
          visible: tempNormal != null,
          child: Container(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              '[${getNormalTempDiff(temp, tempNormal)}]',
              style: getNormalTempStyle(temp, tempNormal),
            ),
          ),
        ),
      ],
    );
  }
}
