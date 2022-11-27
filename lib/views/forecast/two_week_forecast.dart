import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import 'package:weather/graphql/__generated__/fetch_forecast.data.gql.dart';
import 'package:weather/helpers/view_helper.dart';
import 'package:weather/views/forecast/forecast_row.dart';
import 'package:weather/views/common/section_header.dart';

/// 2週間気温予報
class TwoWeekForecast extends StatelessWidget {
  final int tempMinRange;
  final int tempMaxRange;

  const TwoWeekForecast({super.key, required this.data, required this.tempMinRange, required this.tempMaxRange});

  final GfetchForecastData_twoWeek data;

  String getTwoWeekDesc(String dateString) {
    final date = DateFormat('y-M-d').parse(dateString);
    final formatter = DateFormat('M/d');
    final fromDate = date.add(const Duration(days: -2));
    final toDate = date.add(const Duration(days: 2));

    return '(${formatter.format(fromDate)} - ${formatter.format(toDate)})';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: '2週間気温予報（5日間平均）',
          areaName: data.twoWeekAreaName,
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
            itemCount: data.week2.length,
            itemBuilder: (BuildContext context, int i) {
              return ForecastRow(
                dateString: data.week2[i].date,
                dateDesc: getTwoWeekDesc(data.week2[i].date),
                tempMin: data.week2[i].tempMin,
                tempMinLower: data.week2[i].tempMinLower,
                tempMinUpper: data.week2[i].tempMinUpper,
                tempMax: data.week2[i].tempMax,
                tempMaxLower: data.week2[i].tempMaxLower,
                tempMaxUpper: data.week2[i].tempMaxUpper,
                tempMinRange: tempMinRange,
                tempMaxRange: tempMaxRange,
                tempMinNormal: data.week2[i].tempMinNormal,
                tempMaxNormal: data.week2[i].tempMaxNormal,
              );
            },
          ),
        ),
      ],
    );
  }
}
