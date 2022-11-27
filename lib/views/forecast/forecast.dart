import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:weather/constants/color.dart';
import 'package:weather/graphql/__generated__/fetch_forecast.data.gql.dart';
import 'package:weather/graphql/__generated__/fetch_forecast.req.gql.dart';
import 'package:weather/graphql/__generated__/fetch_forecast.var.gql.dart';
import 'package:weather/views/forecast/daily_forecast.dart';
import 'package:weather/views/forecast/month1_forecast.dart';
import 'package:weather/views/forecast/month3_forecast.dart';
import 'package:weather/views/forecast/month6_forecast.dart';
import 'package:weather/views/forecast/two_week_forecast.dart';
import 'package:weather/views/forecast/weekly_forecast.dart';

/// 天気予報
class Forecast extends StatelessWidget {
  final client = GetIt.I<Client>();
  final String areaCode;

  Forecast({Key? key, required this.areaCode}) : super(key: key);

  // 気温の上限と下限を算出する
  List<int> calcRange(GfetchForecastData data) {
    int min = 100;
    int max = 0;

    for (var item in data.daily.items) {
      final tempMin = item.tempMin;
      min = tempMin != null && min > tempMin ? tempMin : min;
      final tempMax = item.tempMax;
      max = tempMax != null && max < tempMax ? tempMax : max;
    }

    for (var item in data.weekly.items) {
      final tempMin = item.tempMinLower;
      min = tempMin != null && min > tempMin ? tempMin : min;
      final tempMax = item.tempMaxUpper;
      max = tempMax != null && max < tempMax ? tempMax : max;
    }

    for (var item in data.twoWeek.week1) {
      min = min > item.tempMinLower ? item.tempMinLower : min;
      max = max < item.tempMaxUpper ? item.tempMaxUpper : max;
    }

    for (var item in data.twoWeek.week2) {
      min = min > item.tempMinLower ? item.tempMinLower : min;
      max = max < item.tempMaxUpper ? item.tempMaxUpper : max;
    }

    return [min, max];
  }

  @override
  Widget build(BuildContext context) {
    final request = GfetchForecastReq((b) {
      b.fetchPolicy = FetchPolicy.NetworkOnly;
      b.vars.areaCode = areaCode;
      return b;
    });

    return Scaffold(
      body: Operation(
        client: client,
        operationRequest: request,
        builder: (
            BuildContext context,
            OperationResponse<GfetchForecastData, GfetchForecastVars>? response,
            Object? error,
        ) {
          if (response == null || response.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = response.data;

          if (data == null) {
            return const Center(child: Text('Error'));
          }

          final range = calcRange(data);

          return RefreshIndicator(
            onRefresh: () => Future(() {
              // 再リクエスト
              client.requestController.add(request);
            }),
            child: Scaffold(
              backgroundColor: colorBackground,
              body: SingleChildScrollView(child:
                Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      DailyForecast(data: data.daily, tempMinRange: range[0], tempMaxRange: range[1]),
                      const SizedBox(height: 24),
                      WeeklyForecast(data: data.weekly, twoWeekData: data.twoWeek, tempMinRange: range[0], tempMaxRange: range[1]),
                      const SizedBox(height: 24),
                      TwoWeekForecast(data: data.twoWeek, tempMinRange: range[0], tempMaxRange: range[1]),
                      const SizedBox(height: 24),
                      Month1Forecast(data: data.month1),
                      const SizedBox(height: 24),
                      Month3Forecast(data: data.month3),
                      const SizedBox(height: 24),
                      Month6Forecast(data: data.month6),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
