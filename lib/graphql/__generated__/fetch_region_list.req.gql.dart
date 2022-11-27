// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:weather/__generated__/serializers.gql.dart' as _i6;
import 'package:weather/graphql/__generated__/fetch_region_list.ast.gql.dart'
    as _i5;
import 'package:weather/graphql/__generated__/fetch_region_list.data.gql.dart'
    as _i2;
import 'package:weather/graphql/__generated__/fetch_region_list.var.gql.dart'
    as _i3;

part 'fetch_region_list.req.gql.g.dart';

abstract class GfetchRegionListReq
    implements
        Built<GfetchRegionListReq, GfetchRegionListReqBuilder>,
        _i1.OperationRequest<_i2.GfetchRegionListData,
            _i3.GfetchRegionListVars> {
  GfetchRegionListReq._();

  factory GfetchRegionListReq(
      [Function(GfetchRegionListReqBuilder b) updates]) = _$GfetchRegionListReq;

  static void _initializeBuilder(GfetchRegionListReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'fetchRegionList')
    ..executeOnListen = true;
  @override
  _i3.GfetchRegionListVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GfetchRegionListData? Function(
      _i2.GfetchRegionListData?, _i2.GfetchRegionListData?)? get updateResult;
  @override
  _i2.GfetchRegionListData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GfetchRegionListData? parseData(Map<String, dynamic> json) =>
      _i2.GfetchRegionListData.fromJson(json);
  static Serializer<GfetchRegionListReq> get serializer =>
      _$gfetchRegionListReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GfetchRegionListReq.serializer, this)
          as Map<String, dynamic>);
  static GfetchRegionListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GfetchRegionListReq.serializer, json);
}
