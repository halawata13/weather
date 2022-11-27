// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/__generated__/serializers.gql.dart' as _i1;

part 'fetch_amedas.data.gql.g.dart';

abstract class GamedasData implements Built<GamedasData, GamedasDataBuilder> {
  GamedasData._();

  factory GamedasData([Function(GamedasDataBuilder b) updates]) = _$GamedasData;

  static void _initializeBuilder(GamedasDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GamedasData_amedas get amedas;
  static Serializer<GamedasData> get serializer => _$gamedasDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GamedasData.serializer, this)
          as Map<String, dynamic>);
  static GamedasData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GamedasData.serializer, json);
}

abstract class GamedasData_amedas
    implements Built<GamedasData_amedas, GamedasData_amedasBuilder> {
  GamedasData_amedas._();

  factory GamedasData_amedas([Function(GamedasData_amedasBuilder b) updates]) =
      _$GamedasData_amedas;

  static void _initializeBuilder(GamedasData_amedasBuilder b) =>
      b..G__typename = 'Amedas';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double? get pressure;
  double? get normalPressure;
  double? get temp;
  int? get humidity;
  int? get snow;
  int? get snow1h;
  int? get snow6h;
  int? get snow12h;
  int? get snow24h;
  int? get sun10m;
  double? get sun1h;
  double? get precipitation10m;
  double? get precipitation1h;
  double? get precipitation3h;
  double? get precipitation24h;
  int? get windDirection;
  double? get wind;
  int? get maxTempTimeHour;
  int? get maxTempTimeMinute;
  double? get maxTemp;
  int? get minTempTimeHour;
  int? get minTempTimeMinute;
  double? get minTemp;
  int? get gustTimeHour;
  int? get gustTimeMinute;
  int? get gustDirection;
  double? get gust;
  String get reportDatetime;
  String get amedasCode;
  String get amedasName;
  static Serializer<GamedasData_amedas> get serializer =>
      _$gamedasDataAmedasSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GamedasData_amedas.serializer, this)
          as Map<String, dynamic>);
  static GamedasData_amedas? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GamedasData_amedas.serializer, json);
}
