// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/__generated__/serializers.gql.dart' as _i1;

part 'fetch_region_list.var.gql.g.dart';

abstract class GfetchRegionListVars
    implements Built<GfetchRegionListVars, GfetchRegionListVarsBuilder> {
  GfetchRegionListVars._();

  factory GfetchRegionListVars(
          [Function(GfetchRegionListVarsBuilder b) updates]) =
      _$GfetchRegionListVars;

  static Serializer<GfetchRegionListVars> get serializer =>
      _$gfetchRegionListVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchRegionListVars.serializer, this)
          as Map<String, dynamic>);
  static GfetchRegionListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GfetchRegionListVars.serializer, json);
}
