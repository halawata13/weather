import 'package:flutter/material.dart';
import 'package:weather/graphql/__generated__/fetch_forecast.data.gql.dart';
import 'package:weather/helpers/view_helper.dart';
import 'package:weather/views/forecast/forecast_row.dart';
import 'package:weather/views/common/section_header.dart';

/// 週間予報
class WeeklyForecast extends StatelessWidget {
  final GfetchForecastData_weekly data;
  final GfetchForecastData_twoWeek twoWeekData;
  final int tempMinRange;
  final int tempMaxRange;

  const WeeklyForecast({super.key, required this.data, required this.tempMinRange, required this.tempMaxRange, required this.twoWeekData});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<double>> normalTempMap = {};
    for (var item in twoWeekData.week1) {
      normalTempMap[item.date] = [item.tempMinNormal, item.tempMaxNormal];
    }

    return Column(
      children: [
        SectionHeader(
          title: '週間予報',
          areaName: data.weekAreaName,
          publishDateString: formatReportDateTime(data.reportDatetime),
        ),
        const SizedBox(height: 2),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: data.items.length,
            itemBuilder: (BuildContext context, int i) {
              return ForecastRow(
                dateString: data.items[i].date,
                tempMin: data.items[i].tempMin,
                tempMinLower: data.items[i].tempMinLower,
                tempMinUpper: data.items[i].tempMinUpper,
                tempMax: data.items[i].tempMax,
                tempMaxLower: data.items[i].tempMaxLower,
                tempMaxUpper: data.items[i].tempMaxUpper,
                tempMinRange: tempMinRange,
                tempMaxRange: tempMaxRange,
                tempMinNormal: normalTempMap[data.items[i].date]?[0],
                tempMaxNormal: normalTempMap[data.items[i].date]?[1],
                jmaWeatherImgCode: data.items[i].jmaWeatherImgCode,
                pop: List.from([data.items[i].pop]),
              );
            },
          ),
        ),
      ],
    );
  }
}
