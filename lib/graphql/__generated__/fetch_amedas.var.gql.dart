// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/__generated__/serializers.gql.dart' as _i1;

part 'fetch_amedas.var.gql.g.dart';

abstract class GamedasVars implements Built<GamedasVars, GamedasVarsBuilder> {
  GamedasVars._();

  factory GamedasVars([Function(GamedasVarsBuilder b) updates]) = _$GamedasVars;

  String get areaCode;
  static Serializer<GamedasVars> get serializer => _$gamedasVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GamedasVars.serializer, this)
          as Map<String, dynamic>);
  static GamedasVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GamedasVars.serializer, json);
}
