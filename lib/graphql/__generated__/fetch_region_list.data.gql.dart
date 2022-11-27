// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/__generated__/serializers.gql.dart' as _i1;

part 'fetch_region_list.data.gql.g.dart';

abstract class GfetchRegionListData
    implements Built<GfetchRegionListData, GfetchRegionListDataBuilder> {
  GfetchRegionListData._();

  factory GfetchRegionListData(
          [Function(GfetchRegionListDataBuilder b) updates]) =
      _$GfetchRegionListData;

  static void _initializeBuilder(GfetchRegionListDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GfetchRegionListData_regionList get regionList;
  static Serializer<GfetchRegionListData> get serializer =>
      _$gfetchRegionListDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchRegionListData.serializer, this)
          as Map<String, dynamic>);
  static GfetchRegionListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GfetchRegionListData.serializer, json);
}

abstract class GfetchRegionListData_regionList
    implements
        Built<GfetchRegionListData_regionList,
            GfetchRegionListData_regionListBuilder> {
  GfetchRegionListData_regionList._();

  factory GfetchRegionListData_regionList(
          [Function(GfetchRegionListData_regionListBuilder b) updates]) =
      _$GfetchRegionListData_regionList;

  static void _initializeBuilder(GfetchRegionListData_regionListBuilder b) =>
      b..G__typename = 'RegionList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GfetchRegionListData_regionList_regionItems> get regionItems;
  static Serializer<GfetchRegionListData_regionList> get serializer =>
      _$gfetchRegionListDataRegionListSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GfetchRegionListData_regionList.serializer, this)
      as Map<String, dynamic>);
  static GfetchRegionListData_regionList? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchRegionListData_regionList.serializer, json);
}

abstract class GfetchRegionListData_regionList_regionItems
    implements
        Built<GfetchRegionListData_regionList_regionItems,
            GfetchRegionListData_regionList_regionItemsBuilder> {
  GfetchRegionListData_regionList_regionItems._();

  factory GfetchRegionListData_regionList_regionItems(
      [Function(GfetchRegionListData_regionList_regionItemsBuilder b)
          updates]) = _$GfetchRegionListData_regionList_regionItems;

  static void _initializeBuilder(
          GfetchRegionListData_regionList_regionItemsBuilder b) =>
      b..G__typename = 'Region';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get regionName;
  String get regionCode;
  BuiltList<GfetchRegionListData_regionList_regionItems_prefItems>
      get prefItems;
  static Serializer<GfetchRegionListData_regionList_regionItems>
      get serializer => _$gfetchRegionListDataRegionListRegionItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GfetchRegionListData_regionList_regionItems.serializer, this)
      as Map<String, dynamic>);
  static GfetchRegionListData_regionList_regionItems? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GfetchRegionListData_regionList_regionItems.serializer, json);
}

abstract class GfetchRegionListData_regionList_regionItems_prefItems
    implements
        Built<GfetchRegionListData_regionList_regionItems_prefItems,
            GfetchRegionListData_regionList_regionItems_prefItemsBuilder> {
  GfetchRegionListData_regionList_regionItems_prefItems._();

  factory GfetchRegionListData_regionList_regionItems_prefItems(
      [Function(GfetchRegionListData_regionList_regionItems_prefItemsBuilder b)
          updates]) = _$GfetchRegionListData_regionList_regionItems_prefItems;

  static void _initializeBuilder(
          GfetchRegionListData_regionList_regionItems_prefItemsBuilder b) =>
      b..G__typename = 'Pref';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get prefName;
  String get prefCode;
  BuiltList<GfetchRegionListData_regionList_regionItems_prefItems_areaItems>
      get areaItems;
  static Serializer<GfetchRegionListData_regionList_regionItems_prefItems>
      get serializer =>
          _$gfetchRegionListDataRegionListRegionItemsPrefItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GfetchRegionListData_regionList_regionItems_prefItems.serializer,
      this) as Map<String, dynamic>);
  static GfetchRegionListData_regionList_regionItems_prefItems? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GfetchRegionListData_regionList_regionItems_prefItems.serializer,
          json);
}

abstract class GfetchRegionListData_regionList_regionItems_prefItems_areaItems
    implements
        Built<GfetchRegionListData_regionList_regionItems_prefItems_areaItems,
            GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder> {
  GfetchRegionListData_regionList_regionItems_prefItems_areaItems._();

  factory GfetchRegionListData_regionList_regionItems_prefItems_areaItems(
          [Function(
                  GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder
                      b)
              updates]) =
      _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems;

  static void _initializeBuilder(
          GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder
              b) =>
      b..G__typename = 'Area';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get regionName;
  String get prefName;
  String get areaName;
  String get areaCode;
  static Serializer<
          GfetchRegionListData_regionList_regionItems_prefItems_areaItems>
      get serializer =>
          _$gfetchRegionListDataRegionListRegionItemsPrefItemsAreaItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GfetchRegionListData_regionList_regionItems_prefItems_areaItems
          .serializer,
      this) as Map<String, dynamic>);
  static GfetchRegionListData_regionList_regionItems_prefItems_areaItems?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GfetchRegionListData_regionList_regionItems_prefItems_areaItems
              .serializer,
          json);
}
