// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:weather/__generated__/serializers.gql.dart' as _i6;
import 'package:weather/graphql/__generated__/fetch_amedas.ast.gql.dart' as _i5;
import 'package:weather/graphql/__generated__/fetch_amedas.data.gql.dart'
    as _i2;
import 'package:weather/graphql/__generated__/fetch_amedas.var.gql.dart' as _i3;

part 'fetch_amedas.req.gql.g.dart';

abstract class GamedasReq
    implements
        Built<GamedasReq, GamedasReqBuilder>,
        _i1.OperationRequest<_i2.GamedasData, _i3.GamedasVars> {
  GamedasReq._();

  factory GamedasReq([Function(GamedasReqBuilder b) updates]) = _$GamedasReq;

  static void _initializeBuilder(GamedasReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'amedas')
    ..executeOnListen = true;
  @override
  _i3.GamedasVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GamedasData? Function(_i2.GamedasData?, _i2.GamedasData?)?
      get updateResult;
  @override
  _i2.GamedasData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GamedasData? parseData(Map<String, dynamic> json) =>
      _i2.GamedasData.fromJson(json);
  static Serializer<GamedasReq> get serializer => _$gamedasReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GamedasReq.serializer, this)
          as Map<String, dynamic>);
  static GamedasReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GamedasReq.serializer, json);
}
