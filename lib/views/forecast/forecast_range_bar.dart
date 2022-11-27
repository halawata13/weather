import 'package:flutter/material.dart';
import 'package:weather/constants/color.dart';

/// 天気行の気温バー
class ForecastRangeBar extends StatelessWidget {
  static const double barHeight = 6;
  static const int pointLength = 10;

  final int tempMin;
  final int? tempMinLower;
  final int? tempMinUpper;
  final int tempMax;
  final int? tempMaxLower;
  final int? tempMaxUpper;
  final int tempMinRange;
  final int tempMaxRange;
  final Color minColor;
  final Color minBgColor;
  final Color maxColor;
  final Color maxBgColor;
  final double width;

  const ForecastRangeBar({super.key, required this.tempMin, required this.tempMinLower, required this.tempMinUpper, required this.tempMax, required this.tempMaxLower, required this.tempMaxUpper, required this.tempMinRange, required this.tempMaxRange, required this.minColor, required this.minBgColor, required this.maxColor, required this.maxBgColor, required this.width});

  double calcPosition(int temp) {
    final ratio = (temp - tempMinRange) / (tempMaxRange - tempMinRange);
    return ((width - ForecastRangeBar.pointLength) * ratio).floorToDouble();
  }

  @override
  Widget build(BuildContext context) {
    final rangeLeft = calcPosition(tempMinLower ?? tempMin);
    final rangeWidth = calcPosition(tempMaxUpper ?? tempMax) + ForecastRangeBar.barHeight - rangeLeft;
    final rangeMinLeft = calcPosition(tempMinLower ?? 0);
    final rangeMinWidth = calcPosition(tempMinUpper ?? 0) + ForecastRangeBar.barHeight - rangeMinLeft;
    final minLeft = calcPosition(tempMin) - 2;
    final rangeMaxLeft = calcPosition(tempMaxLower ?? 0);
    final rangeMaxWidth = calcPosition(tempMaxUpper ?? 0) + ForecastRangeBar.barHeight - rangeMaxLeft;
    final maxLeft = calcPosition(tempMax) - 2;

    return Column(children: [
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: width,
            height: ForecastRangeBar.pointLength.toDouble(),
          ),

          Positioned(
            left: rangeLeft,
            width: rangeWidth,
            height: ForecastRangeBar.barHeight,
            child: Container(
              height: ForecastRangeBar.barHeight,
              decoration: BoxDecoration(
                color: colorTempBarBackground,
                borderRadius: BorderRadius.circular(ForecastRangeBar.barHeight / 2),
              ),
            ),
          ),

          // 最低気温範囲
          Positioned(
            left: rangeMinLeft,
            child: Container(
              width: rangeMinWidth,
              height: ForecastRangeBar.barHeight,
              decoration: BoxDecoration(
                color: minBgColor,
                borderRadius: BorderRadius.circular(ForecastRangeBar.barHeight / 2),
              ),
            ),
          ),

          // 最低気温値
          Positioned(
            left: minLeft,
            child: Container(
              width: ForecastRangeBar.pointLength.toDouble(),
              height: ForecastRangeBar.pointLength.toDouble(),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: minColor,
                borderRadius: BorderRadius.circular(ForecastRangeBar.pointLength / 2),
              ),
            ),
          ),

          // 最高気温範囲
          Positioned(
            left: rangeMaxLeft,
            child: Container(
              width: rangeMaxWidth,
              height: ForecastRangeBar.barHeight,
              decoration: BoxDecoration(
                color: maxBgColor,
                borderRadius: BorderRadius.circular(ForecastRangeBar.barHeight / 2),
              ),
            ),
          ),

          // 最高気温値
          Positioned(
            left: maxLeft,
            child: Container(
              width: ForecastRangeBar.pointLength.toDouble(),
              height: ForecastRangeBar.pointLength.toDouble(),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: maxColor,
                borderRadius: BorderRadius.circular(ForecastRangeBar.pointLength / 2),
              ),
            ),
          ),
        ],
      ),
    ],);
  }
}
