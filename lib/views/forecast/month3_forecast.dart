import 'package:flutter/material.dart';
import 'package:weather/graphql/__generated__/fetch_forecast.data.gql.dart';
import 'package:weather/helpers/view_helper.dart';
import 'package:weather/views/forecast/season_date.dart';
import 'package:weather/views/forecast/season_temp.dart';
import 'package:weather/views/common/section_header.dart';

/// ３か月予報
class Month3Forecast extends StatelessWidget {
  final GfetchForecastData_month3 data;

  const Month3Forecast({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: '３か月予報',
          areaName: data.seasonAreaName,
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
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(242, 242, 242, 1),
                          width: 1,
                        )
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 110,
                      child: SeasonDate(dateLabel: formatMonth3Date(data.items[i].fromDate, data.items[i].toDate)),
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(228, 228, 228, 1),
                      ),
                    ),
                    SeasonTemp(temperature: data.items[i].temperature),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
