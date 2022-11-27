import 'package:flutter/material.dart';
import 'package:weather/graphql/__generated__/fetch_forecast.data.gql.dart';
import 'package:weather/helpers/view_helper.dart';
import 'package:weather/views/forecast/forecast_row.dart';
import 'package:weather/views/common/section_header.dart';

/// 明日までの天気
class DailyForecast extends StatelessWidget {
  final GfetchForecastData_daily data;
  final int tempMinRange;
  final int tempMaxRange;

  const DailyForecast({super.key, required this.data, required this.tempMinRange, required this.tempMaxRange});

  @override
  Widget build(BuildContext context) {
    final items = data.items.where((item) => item.tempMin != null || item.tempMax != null).toList();

    return Column(
      children: [
        SectionHeader(
            title: '明日までの気温',
            areaName: data.areaName,
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
            itemCount: items.length,
            itemBuilder: (BuildContext context, int i) {
              return ForecastRow(
                dateString: items[i].date,
                tempMin: items[i].tempMin,
                tempMax: items[i].tempMax,
                tempMinRange: tempMinRange,
                tempMaxRange: tempMaxRange,
                jmaWeatherImgCode: items[i].jmaWeatherImgCode,
                pop: items[i].pop.asList(),
              );
            },
          ),
        ),
      ],
    );
  }
}
