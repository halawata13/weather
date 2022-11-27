// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:weather/__generated__/serializers.gql.dart' as _i6;
import 'package:weather/graphql/__generated__/fetch_forecast.ast.gql.dart'
    as _i5;
import 'package:weather/graphql/__generated__/fetch_forecast.data.gql.dart'
    as _i2;
import 'package:weather/graphql/__generated__/fetch_forecast.var.gql.dart'
    as _i3;

part 'fetch_forecast.req.gql.g.dart';

abstract class GfetchForecastReq
    implements
        Built<GfetchForecastReq, GfetchForecastReqBuilder>,
        _i1.OperationRequest<_i2.GfetchForecastData, _i3.GfetchForecastVars> {
  GfetchForecastReq._();

  factory GfetchForecastReq([Function(GfetchForecastReqBuilder b) updates]) =
      _$GfetchForecastReq;

  static void _initializeBuilder(GfetchForecastReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'fetchForecast')
    ..executeOnListen = true;
  @override
  _i3.GfetchForecastVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GfetchForecastData? Function(
      _i2.GfetchForecastData?, _i2.GfetchForecastData?)? get updateResult;
  @override
  _i2.GfetchForecastData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GfetchForecastData? parseData(Map<String, dynamic> json) =>
      _i2.GfetchForecastData.fromJson(json);
  static Serializer<GfetchForecastReq> get serializer =>
      _$gfetchForecastReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GfetchForecastReq.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GfetchForecastReq.serializer, json);
}
