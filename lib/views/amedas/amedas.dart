import 'dart:math';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/constants/color.dart';
import 'package:weather/graphql/__generated__/fetch_amedas.data.gql.dart';
import 'package:weather/graphql/__generated__/fetch_amedas.req.gql.dart';
import 'package:weather/graphql/__generated__/fetch_amedas.var.gql.dart';
import 'package:weather/helpers/view_helper.dart';
import 'package:weather/views/amedas/amedas_item.dart';
import 'package:weather/views/amedas/amedas_row.dart';
import 'package:weather/views/common/section_header.dart';

/// アメダス
class Amedas extends StatelessWidget {
  final client = GetIt.I<Client>();
  final String areaCode;

  Amedas({super.key, required this.areaCode});

  @override
  Widget build(BuildContext context) {
    final request = GamedasReq((b) {
      b.fetchPolicy = FetchPolicy.NetworkOnly;
      b.vars.areaCode = areaCode;
      return b;
    });

    // 絶対湿度を計算する
    double? calcAbsoluteHumidity(double? temp, int? relativeHumidity) {
      if (temp == null || relativeHumidity == null) {
        return null;
      }

      final humidity = 217 * (6.1078 * pow(10, 7.5 * temp / (temp + 237.3))) / (temp + 273.15) * relativeHumidity / 100;
      // final humidity = 0.622 * (6.1078 * pow(10, 7.5 * temp / (temp + 237.3)) * relativeHumidity / 100) / (pressure - (6.1078 * pow(10, 7.5 * temp / (temp + 237.3)) * relativeHumidity / 100)) * 1000;
      return (humidity * 10).round() / 10;
    }

    return Scaffold(
      body: Operation(
          client: client,
          operationRequest: request,
          builder: (
              BuildContext context,
              OperationResponse<GamedasData, GamedasVars>? response,
              Object? error,
          ) {
            if (response == null || response.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            final data = response.data;

            if (data == null) {
              return const Center(child: Text('Error'));
            }

            return RefreshIndicator(
              onRefresh: () => Future(() {
                // 再リクエスト
                client.requestController.add(request);
              }),
              child: Scaffold(
                backgroundColor: colorBackground,
                body: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SectionHeader(
                          title: '実況天気',
                          areaName: data.amedas.amedasName,
                          publishDateString: formatAmedasReportDateTime(data.amedas.reportDatetime),
                        ),
                        const SizedBox(height: 2),
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                AmedasRow(
                                    children: [
                                      AmedasItem(
                                        iconName: 'temp',
                                        labelName: '現在気温',
                                        value: data.amedas.temp.toString(),
                                        unit: '℃',
                                      ),
                                      AmedasItem(
                                        iconName: 'min-temp',
                                        labelName: '最低気温',
                                        value: data.amedas.minTemp.toString(),
                                        unit: '℃',
                                        subText: '${data.amedas.minTempTimeHour}:${data.amedas.minTempTimeMinute}',
                                      ),
                                      AmedasItem(
                                        iconName: 'max-temp',
                                        labelName: '最高気温',
                                        value: data.amedas.maxTemp.toString(),
                                        unit: '℃',
                                        subText: '${data.amedas.maxTempTimeHour}:${data.amedas.maxTempTimeMinute}',
                                      ),
                                    ]
                                ),
                                AmedasRow(
                                  children: [
                                    AmedasItem(
                                      iconName: 'relative-humidity',
                                      labelName: '相対湿度',
                                      value: data.amedas.humidity.toString(),
                                      unit: '%',
                                    ),
                                    AmedasItem(
                                      iconName: 'absolute-humidity',
                                      labelName: '絶対湿度',
                                      value: calcAbsoluteHumidity(data.amedas.temp, data.amedas.humidity)?.toString(),
                                      unit: 'g/㎥',
                                    ),
                                    const SizedBox(width: 1),
                                  ],
                                ),
                                AmedasRow(
                                  children: [
                                    AmedasItem(
                                      iconName: 'sun',
                                      labelName: '日照時間(1h)',
                                      value: data.amedas.sun1h.toString(),
                                      unit: 'h',
                                    ),
                                    AmedasItem(
                                      iconName: 'sun',
                                      labelName: '日照時間(10m)',
                                      value: data.amedas.sun10m.toString(),
                                      unit: '分',
                                    ),
                                    const SizedBox(width: 1),
                                  ],
                                ),
                                AmedasRow(
                                  children: [
                                    AmedasItem(
                                      iconName: 'precipitation',
                                      labelName: '降水量(24h)',
                                      value: data.amedas.precipitation24h.toString(),
                                      unit: 'mm',
                                    ),
                                    AmedasItem(
                                      iconName: 'precipitation',
                                      labelName: '降水量(1h)',
                                      value: data.amedas.precipitation1h.toString(),
                                      unit: 'mm',
                                    ),
                                    AmedasItem(
                                      iconName: 'precipitation',
                                      labelName: '降水量(10m)',
                                      value: data.amedas.precipitation10m.toString(),
                                      unit: 'mm',
                                    ),
                                  ],
                                ),
                                AmedasRow(
                                  children: [
                                    AmedasItem(
                                      iconName: 'snow',
                                      labelName: '積雪深',
                                      value: data.amedas.snow?.toString() ?? '0',
                                      unit: 'mm',
                                    ),
                                    AmedasItem(
                                      iconName: 'snow',
                                      labelName: '降雪量(24h)',
                                      value: data.amedas.snow24h.toString(),
                                      unit: 'mm',
                                    ),
                                    AmedasItem(
                                      iconName: 'snow',
                                      labelName: '降雪量(1h)',
                                      value: data.amedas.snow1h.toString(),
                                      unit: 'mm',
                                    ),
                                  ],
                                ),
                                AmedasRow(
                                  children: [
                                    AmedasItem(
                                      iconName: 'wind-direction',
                                      labelName: '風向',
                                      value: windDirectionLabel(data.amedas.windDirection),
                                    ),
                                    AmedasItem(
                                      iconName: 'wind-speed',
                                      labelName: '風速',
                                      value: data.amedas.wind.toString(),
                                      unit: 'm/s',
                                    ),
                                    AmedasItem(
                                      iconName: 'wind-speed',
                                      labelName: '最大瞬間風速',
                                      value: data.amedas.gust.toString(),
                                      unit: 'm/s',
                                      subText: '${data.amedas.gustTimeHour}:${data.amedas.gustTimeMinute}',
                                    ),
                                  ],
                                ),
                                AmedasRow(
                                  children: [
                                    AmedasItem(
                                      iconName: 'pressure',
                                      labelName: '海面気圧',
                                      value: data.amedas.pressure.toString(),
                                      unit: 'hPa',
                                    ),
                                    AmedasItem(
                                      iconName: 'pressure',
                                      labelName: '現地気圧',
                                      value: data.amedas.normalPressure.toString(),
                                      unit: 'hPa',
                                    ),
                                    const SizedBox(width: 1),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
