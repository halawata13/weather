// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:weather/graphql/__generated__/fetch_amedas.data.gql.dart'
    show GamedasData, GamedasData_amedas;
import 'package:weather/graphql/__generated__/fetch_amedas.req.gql.dart'
    show GamedasReq;
import 'package:weather/graphql/__generated__/fetch_amedas.var.gql.dart'
    show GamedasVars;
import 'package:weather/graphql/__generated__/fetch_forecast.data.gql.dart'
    show
        GfetchForecastData,
        GfetchForecastData_daily,
        GfetchForecastData_daily_items,
        GfetchForecastData_month1,
        GfetchForecastData_month1_items,
        GfetchForecastData_month3,
        GfetchForecastData_month3_items,
        GfetchForecastData_month6,
        GfetchForecastData_month6_items,
        GfetchForecastData_twoWeek,
        GfetchForecastData_twoWeek_week1,
        GfetchForecastData_twoWeek_week2,
        GfetchForecastData_weekly,
        GfetchForecastData_weekly_items;
import 'package:weather/graphql/__generated__/fetch_forecast.req.gql.dart'
    show GfetchForecastReq;
import 'package:weather/graphql/__generated__/fetch_forecast.var.gql.dart'
    show GfetchForecastVars;
import 'package:weather/graphql/__generated__/fetch_region_list.data.gql.dart'
    show
        GfetchRegionListData,
        GfetchRegionListData_regionList,
        GfetchRegionListData_regionList_regionItems,
        GfetchRegionListData_regionList_regionItems_prefItems,
        GfetchRegionListData_regionList_regionItems_prefItems_areaItems;
import 'package:weather/graphql/__generated__/fetch_region_list.req.gql.dart'
    show GfetchRegionListReq;
import 'package:weather/graphql/__generated__/fetch_region_list.var.gql.dart'
    show GfetchRegionListVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GamedasData,
  GamedasData_amedas,
  GamedasReq,
  GamedasVars,
  GfetchForecastData,
  GfetchForecastData_daily,
  GfetchForecastData_daily_items,
  GfetchForecastData_month1,
  GfetchForecastData_month1_items,
  GfetchForecastData_month3,
  GfetchForecastData_month3_items,
  GfetchForecastData_month6,
  GfetchForecastData_month6_items,
  GfetchForecastData_twoWeek,
  GfetchForecastData_twoWeek_week1,
  GfetchForecastData_twoWeek_week2,
  GfetchForecastData_weekly,
  GfetchForecastData_weekly_items,
  GfetchForecastReq,
  GfetchForecastVars,
  GfetchRegionListData,
  GfetchRegionListData_regionList,
  GfetchRegionListData_regionList_regionItems,
  GfetchRegionListData_regionList_regionItems_prefItems,
  GfetchRegionListData_regionList_regionItems_prefItems_areaItems,
  GfetchRegionListReq,
  GfetchRegionListVars
])
final Serializers serializers = _serializersBuilder.build();
