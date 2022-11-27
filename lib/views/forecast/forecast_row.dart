import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:weather/constants/color.dart';
import 'package:weather/views/forecast/forecast_date.dart';
import 'package:weather/views/forecast/forecast_range.dart';
import 'package:weather/views/forecast/forecast_range_bar.dart';
import 'package:weather/views/forecast/forecast_temp.dart';
import 'package:weather/views/forecast/forecast_weather.dart';

/// 天気行
class ForecastRow extends StatelessWidget {
  const ForecastRow({
    super.key,
    required this.dateString,
    this.dateDesc,
    this.tempMin,
    this.tempMax,
    this.tempMinLower,
    this.tempMinUpper,
    this.tempMaxLower,
    this.tempMaxUpper,
    this.tempMinRange,
    this.tempMaxRange,
    this.tempMinNormal,
    this.tempMaxNormal,
    this.jmaWeatherImgCode,
    this.pop,
  });

  static const double rangeWidth = 80;

  final String dateString;
  final String? dateDesc;
  final int? tempMin;
  final int? tempMinLower;
  final int? tempMinUpper;
  final int? tempMax;
  final int? tempMaxLower;
  final int? tempMaxUpper;
  final int? tempMinRange;
  final int? tempMaxRange;
  final double? tempMinNormal;
  final double? tempMaxNormal;
  final String? jmaWeatherImgCode;
  final List<int>? pop;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: colorBorder,
                width: 1,
              )
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // 日付
          SizedBox(
            width: 90,
            child: Column(
              children: [
                ForecastDate(dateString: dateString, desc: dateDesc),
                Visibility(
                  visible: jmaWeatherImgCode != null && pop != null,
                  child: Container(
                    padding: const EdgeInsets.only(top: 4),
                    child: ForecastWeather(jmaWeatherImgCode: jmaWeatherImgCode ?? '', pop: pop ?? List.empty()),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 40,
            width: 1,
            decoration: const BoxDecoration(
              color: colorBorder,
            ),
          ),

          // 気温
          Column(children: [
            Row(children: [
              // 最低気温
              SizedBox(
                width: 96,
                child: ForecastTemp(temp: tempMin, tempNormal: tempMinNormal, color: colorMin1),
              ),

              const SizedBox(width: 12),

              // 最高気温
              SizedBox(
                width: 96,
                child: ForecastTemp(temp: tempMax, tempNormal: tempMaxNormal, color: colorMax1),
              ),
            ],),
            Visibility(
              visible: tempMinLower != null && tempMinUpper != null && tempMaxLower != null && tempMaxUpper != null,
              child: Container(
                padding: const EdgeInsets.only(top: 4),
                child: Row(children: [
                  // 最低気温範囲
                  Container(
                    width: 96,
                    alignment: Alignment.center,
                    child: ForecastRange(tempMin: tempMinLower ?? 0, tempMax: tempMinUpper ?? 0),
                  ),

                  const SizedBox(width: 12),

                  // 最高気温範囲
                  Container(
                    width: 96,
                    alignment: Alignment.center,
                    child: ForecastRange(tempMin: tempMaxLower ?? 0, tempMax: tempMaxUpper ?? 0),
                  ),
                ],),
              ),
            ),
            Visibility(
              // 気温範囲バー
              visible: tempMinRange != null && tempMaxRange != null,
              child: Container(
                width: 204,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 8),
                child: ForecastRangeBar(
                  tempMin: tempMin ?? tempMax ?? 0,
                  tempMinLower: tempMinLower,
                  tempMinUpper: tempMinUpper,
                  tempMax: tempMax ?? 0,
                  tempMaxLower: tempMaxLower,
                  tempMaxUpper: tempMaxUpper,
                  tempMinRange: tempMinRange ?? 0,
                  tempMaxRange: tempMaxRange ?? 50,
                  minColor: colorMin1,
                  minBgColor: colorMin2,
                  maxColor: colorMax1,
                  maxBgColor: colorMax2,
                  width: 204,
                ),
              ),
            ),
          ],),
        ],
      ),
    );
  }
}
