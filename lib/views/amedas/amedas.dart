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
                body: Container(
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
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'temp',
                                      labelName: '乾球温度',
                                      value: data.amedas.temp.toString(),
                                      unit: '℃',
                                    ),
                                  ),
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'relative-humidity',
                                      labelName: '相対湿度',
                                      value: data.amedas.humidity.toString(),
                                      unit: '%',
                                    ),
                                  ),
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'absolute-humidity',
                                      labelName: '絶対湿度',
                                      value: calcAbsoluteHumidity(data.amedas.temp, data.amedas.humidity)?.toString(),
                                      unit: 'g/㎥',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              Row(
                                children: [
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'sun',
                                      labelName: '日照時間(1h)',
                                      value: data.amedas.sun1h.toString(),
                                      unit: 'h',
                                    ),
                                  ),
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'precipitation',
                                      labelName: '降水量(1h)',
                                      value: data.amedas.precipitation1h.toString(),
                                      unit: 'mm',
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(width: 1),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              Row(
                                children: [
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'wind-direction',
                                      labelName: '風向',
                                      value: windDirectionLabel(data.amedas.windDirection),
                                    ),
                                  ),
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'wind-speed',
                                      labelName: '風速',
                                      value: data.amedas.wind.toString(),
                                      unit: 'm/s',
                                    ),
                                  ),
                                  Expanded(
                                    child: AmedasItem(
                                      iconName: 'pressure',
                                      labelName: '海面気圧',
                                      value: data.amedas.pressure.toString(),
                                      unit: 'hPa',
                                    ),
                                  ),
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
            );
          }
      ),
    );
  }
}
