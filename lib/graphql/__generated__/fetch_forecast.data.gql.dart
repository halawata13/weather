// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/__generated__/serializers.gql.dart' as _i1;

part 'fetch_forecast.data.gql.g.dart';

abstract class GfetchForecastData
    implements Built<GfetchForecastData, GfetchForecastDataBuilder> {
  GfetchForecastData._();

  factory GfetchForecastData([Function(GfetchForecastDataBuilder b) updates]) =
      _$GfetchForecastData;

  static void _initializeBuilder(GfetchForecastDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GfetchForecastData_daily get daily;
  GfetchForecastData_weekly get weekly;
  GfetchForecastData_twoWeek get twoWeek;
  GfetchForecastData_month1 get month1;
  GfetchForecastData_month3 get month3;
  GfetchForecastData_month6 get month6;
  static Serializer<GfetchForecastData> get serializer =>
      _$gfetchForecastDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchForecastData.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GfetchForecastData.serializer, json);
}

abstract class GfetchForecastData_daily
    implements
        Built<GfetchForecastData_daily, GfetchForecastData_dailyBuilder> {
  GfetchForecastData_daily._();

  factory GfetchForecastData_daily(
          [Function(GfetchForecastData_dailyBuilder b) updates]) =
      _$GfetchForecastData_daily;

  static void _initializeBuilder(GfetchForecastData_dailyBuilder b) =>
      b..G__typename = 'Forecast';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get areaName;
  String get reportDatetime;
  BuiltList<GfetchForecastData_daily_items> get items;
  static Serializer<GfetchForecastData_daily> get serializer =>
      _$gfetchForecastDataDailySerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchForecastData_daily.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastData_daily? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_daily.serializer, json);
}

abstract class GfetchForecastData_daily_items
    implements
        Built<GfetchForecastData_daily_items,
            GfetchForecastData_daily_itemsBuilder> {
  GfetchForecastData_daily_items._();

  factory GfetchForecastData_daily_items(
          [Function(GfetchForecastData_daily_itemsBuilder b) updates]) =
      _$GfetchForecastData_daily_items;

  static void _initializeBuilder(GfetchForecastData_daily_itemsBuilder b) =>
      b..G__typename = 'ForecastItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  String? get jmaWeatherImgCode;
  BuiltList<int> get pop;
  int? get tempMin;
  int? get tempMax;
  static Serializer<GfetchForecastData_daily_items> get serializer =>
      _$gfetchForecastDataDailyItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GfetchForecastData_daily_items.serializer, this) as Map<String, dynamic>);
  static GfetchForecastData_daily_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_daily_items.serializer, json);
}

abstract class GfetchForecastData_weekly
    implements
        Built<GfetchForecastData_weekly, GfetchForecastData_weeklyBuilder> {
  GfetchForecastData_weekly._();

  factory GfetchForecastData_weekly(
          [Function(GfetchForecastData_weeklyBuilder b) updates]) =
      _$GfetchForecastData_weekly;

  static void _initializeBuilder(GfetchForecastData_weeklyBuilder b) =>
      b..G__typename = 'WeeklyForecast';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get weekAreaName;
  String get reportDatetime;
  BuiltList<GfetchForecastData_weekly_items> get items;
  static Serializer<GfetchForecastData_weekly> get serializer =>
      _$gfetchForecastDataWeeklySerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchForecastData_weekly.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastData_weekly? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_weekly.serializer, json);
}

abstract class GfetchForecastData_weekly_items
    implements
        Built<GfetchForecastData_weekly_items,
            GfetchForecastData_weekly_itemsBuilder> {
  GfetchForecastData_weekly_items._();

  factory GfetchForecastData_weekly_items(
          [Function(GfetchForecastData_weekly_itemsBuilder b) updates]) =
      _$GfetchForecastData_weekly_items;

  static void _initializeBuilder(GfetchForecastData_weekly_itemsBuilder b) =>
      b..G__typename = 'WeeklyForecastItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  String? get jmaWeatherImgCode;
  int? get pop;
  int? get tempMin;
  int? get tempMax;
  int? get tempMinUpper;
  int? get tempMinLower;
  int? get tempMaxUpper;
  int? get tempMaxLower;
  static Serializer<GfetchForecastData_weekly_items> get serializer =>
      _$gfetchForecastDataWeeklyItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GfetchForecastData_weekly_items.serializer, this)
      as Map<String, dynamic>);
  static GfetchForecastData_weekly_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_weekly_items.serializer, json);
}

abstract class GfetchForecastData_twoWeek
    implements
        Built<GfetchForecastData_twoWeek, GfetchForecastData_twoWeekBuilder> {
  GfetchForecastData_twoWeek._();

  factory GfetchForecastData_twoWeek(
          [Function(GfetchForecastData_twoWeekBuilder b) updates]) =
      _$GfetchForecastData_twoWeek;

  static void _initializeBuilder(GfetchForecastData_twoWeekBuilder b) =>
      b..G__typename = 'TwoWeekForecast';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get twoWeekAreaName;
  String get reportDatetime;
  BuiltList<GfetchForecastData_twoWeek_week1> get week1;
  BuiltList<GfetchForecastData_twoWeek_week2> get week2;
  static Serializer<GfetchForecastData_twoWeek> get serializer =>
      _$gfetchForecastDataTwoWeekSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GfetchForecastData_twoWeek.serializer, this) as Map<String, dynamic>);
  static GfetchForecastData_twoWeek? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_twoWeek.serializer, json);
}

abstract class GfetchForecastData_twoWeek_week1
    implements
        Built<GfetchForecastData_twoWeek_week1,
            GfetchForecastData_twoWeek_week1Builder> {
  GfetchForecastData_twoWeek_week1._();

  factory GfetchForecastData_twoWeek_week1(
          [Function(GfetchForecastData_twoWeek_week1Builder b) updates]) =
      _$GfetchForecastData_twoWeek_week1;

  static void _initializeBuilder(GfetchForecastData_twoWeek_week1Builder b) =>
      b..G__typename = 'TwoWeekForecastItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  int get tempMin;
  int get tempMinUpper;
  int get tempMinLower;
  double get tempMinNormal;
  int get tempMax;
  int get tempMaxUpper;
  int get tempMaxLower;
  double get tempMaxNormal;
  static Serializer<GfetchForecastData_twoWeek_week1> get serializer =>
      _$gfetchForecastDataTwoWeekWeek1Serializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GfetchForecastData_twoWeek_week1.serializer, this)
      as Map<String, dynamic>);
  static GfetchForecastData_twoWeek_week1? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_twoWeek_week1.serializer, json);
}

abstract class GfetchForecastData_twoWeek_week2
    implements
        Built<GfetchForecastData_twoWeek_week2,
            GfetchForecastData_twoWeek_week2Builder> {
  GfetchForecastData_twoWeek_week2._();

  factory GfetchForecastData_twoWeek_week2(
          [Function(GfetchForecastData_twoWeek_week2Builder b) updates]) =
      _$GfetchForecastData_twoWeek_week2;

  static void _initializeBuilder(GfetchForecastData_twoWeek_week2Builder b) =>
      b..G__typename = 'TwoWeekForecastItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  int get tempMin;
  int get tempMinUpper;
  int get tempMinLower;
  double get tempMinNormal;
  int get tempMax;
  int get tempMaxUpper;
  int get tempMaxLower;
  double get tempMaxNormal;
  static Serializer<GfetchForecastData_twoWeek_week2> get serializer =>
      _$gfetchForecastDataTwoWeekWeek2Serializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GfetchForecastData_twoWeek_week2.serializer, this)
      as Map<String, dynamic>);
  static GfetchForecastData_twoWeek_week2? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_twoWeek_week2.serializer, json);
}

abstract class GfetchForecastData_month1
    implements
        Built<GfetchForecastData_month1, GfetchForecastData_month1Builder> {
  GfetchForecastData_month1._();

  factory GfetchForecastData_month1(
          [Function(GfetchForecastData_month1Builder b) updates]) =
      _$GfetchForecastData_month1;

  static void _initializeBuilder(GfetchForecastData_month1Builder b) =>
      b..G__typename = 'Season';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get seasonAreaName;
  String get reportDatetime;
  BuiltList<GfetchForecastData_month1_items> get items;
  static Serializer<GfetchForecastData_month1> get serializer =>
      _$gfetchForecastDataMonth1Serializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchForecastData_month1.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastData_month1? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_month1.serializer, json);
}

abstract class GfetchForecastData_month1_items
    implements
        Built<GfetchForecastData_month1_items,
            GfetchForecastData_month1_itemsBuilder> {
  GfetchForecastData_month1_items._();

  factory GfetchForecastData_month1_items(
          [Function(GfetchForecastData_month1_itemsBuilder b) updates]) =
      _$GfetchForecastData_month1_items;

  static void _initializeBuilder(GfetchForecastData_month1_itemsBuilder b) =>
      b..G__typename = 'SeasonItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get fromDate;
  String get toDate;
  BuiltList<String> get temperature;
  static Serializer<GfetchForecastData_month1_items> get serializer =>
      _$gfetchForecastDataMonth1ItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GfetchForecastData_month1_items.serializer, this)
      as Map<String, dynamic>);
  static GfetchForecastData_month1_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_month1_items.serializer, json);
}

abstract class GfetchForecastData_month3
    implements
        Built<GfetchForecastData_month3, GfetchForecastData_month3Builder> {
  GfetchForecastData_month3._();

  factory GfetchForecastData_month3(
          [Function(GfetchForecastData_month3Builder b) updates]) =
      _$GfetchForecastData_month3;

  static void _initializeBuilder(GfetchForecastData_month3Builder b) =>
      b..G__typename = 'Season';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get seasonAreaName;
  String get reportDatetime;
  BuiltList<GfetchForecastData_month3_items> get items;
  static Serializer<GfetchForecastData_month3> get serializer =>
      _$gfetchForecastDataMonth3Serializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchForecastData_month3.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastData_month3? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_month3.serializer, json);
}

abstract class GfetchForecastData_month3_items
    implements
        Built<GfetchForecastData_month3_items,
            GfetchForecastData_month3_itemsBuilder> {
  GfetchForecastData_month3_items._();

  factory GfetchForecastData_month3_items(
          [Function(GfetchForecastData_month3_itemsBuilder b) updates]) =
      _$GfetchForecastData_month3_items;

  static void _initializeBuilder(GfetchForecastData_month3_itemsBuilder b) =>
      b..G__typename = 'SeasonItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get fromDate;
  String get toDate;
  BuiltList<String> get temperature;
  static Serializer<GfetchForecastData_month3_items> get serializer =>
      _$gfetchForecastDataMonth3ItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GfetchForecastData_month3_items.serializer, this)
      as Map<String, dynamic>);
  static GfetchForecastData_month3_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_month3_items.serializer, json);
}

abstract class GfetchForecastData_month6
    implements
        Built<GfetchForecastData_month6, GfetchForecastData_month6Builder> {
  GfetchForecastData_month6._();

  factory GfetchForecastData_month6(
          [Function(GfetchForecastData_month6Builder b) updates]) =
      _$GfetchForecastData_month6;

  static void _initializeBuilder(GfetchForecastData_month6Builder b) =>
      b..G__typename = 'Season';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get seasonAreaName;
  String get reportDatetime;
  BuiltList<GfetchForecastData_month6_items> get items;
  static Serializer<GfetchForecastData_month6> get serializer =>
      _$gfetchForecastDataMonth6Serializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchForecastData_month6.serializer, this)
          as Map<String, dynamic>);
  static GfetchForecastData_month6? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_month6.serializer, json);
}

abstract class GfetchForecastData_month6_items
    implements
        Built<GfetchForecastData_month6_items,
            GfetchForecastData_month6_itemsBuilder> {
  GfetchForecastData_month6_items._();

  factory GfetchForecastData_month6_items(
          [Function(GfetchForecastData_month6_itemsBuilder b) updates]) =
      _$GfetchForecastData_month6_items;

  static void _initializeBuilder(GfetchForecastData_month6_itemsBuilder b) =>
      b..G__typename = 'SeasonItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get fromDate;
  String get toDate;
  BuiltList<String> get temperature;
  static Serializer<GfetchForecastData_month6_items> get serializer =>
      _$gfetchForecastDataMonth6ItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GfetchForecastData_month6_items.serializer, this)
      as Map<String, dynamic>);
  static GfetchForecastData_month6_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchForecastData_month6_items.serializer, json);
}
