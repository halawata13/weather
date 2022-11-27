// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/__generated__/serializers.gql.dart' as _i1;

part 'fetch_forecast.var.gql.g.dart';

abstract class GfetchForecastVars
    implements Built<GfetchForecastVars, GfetchForecastVarsBuilder> {
  GfetchForecastVars._();

  factory GfetchForecastVars([Function(GfetchForecastVarsBuilder b) updates]) =
      _$GfetchForecastVars;

  String get areaCode;
  static Serializer<GfetchForecastVars> get serializer =>
      _$gfetchForecastVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchForecastVars.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GfetchForecastVars.serializer, json);
}
