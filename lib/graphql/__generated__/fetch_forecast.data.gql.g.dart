// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_forecast.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GfetchForecastData> _$gfetchForecastDataSerializer =
    new _$GfetchForecastDataSerializer();
Serializer<GfetchForecastData_daily> _$gfetchForecastDataDailySerializer =
    new _$GfetchForecastData_dailySerializer();
Serializer<GfetchForecastData_daily_items>
    _$gfetchForecastDataDailyItemsSerializer =
    new _$GfetchForecastData_daily_itemsSerializer();
Serializer<GfetchForecastData_weekly> _$gfetchForecastDataWeeklySerializer =
    new _$GfetchForecastData_weeklySerializer();
Serializer<GfetchForecastData_weekly_items>
    _$gfetchForecastDataWeeklyItemsSerializer =
    new _$GfetchForecastData_weekly_itemsSerializer();
Serializer<GfetchForecastData_twoWeek> _$gfetchForecastDataTwoWeekSerializer =
    new _$GfetchForecastData_twoWeekSerializer();
Serializer<GfetchForecastData_twoWeek_week1>
    _$gfetchForecastDataTwoWeekWeek1Serializer =
    new _$GfetchForecastData_twoWeek_week1Serializer();
Serializer<GfetchForecastData_twoWeek_week2>
    _$gfetchForecastDataTwoWeekWeek2Serializer =
    new _$GfetchForecastData_twoWeek_week2Serializer();
Serializer<GfetchForecastData_month1> _$gfetchForecastDataMonth1Serializer =
    new _$GfetchForecastData_month1Serializer();
Serializer<GfetchForecastData_month1_items>
    _$gfetchForecastDataMonth1ItemsSerializer =
    new _$GfetchForecastData_month1_itemsSerializer();
Serializer<GfetchForecastData_month3> _$gfetchForecastDataMonth3Serializer =
    new _$GfetchForecastData_month3Serializer();
Serializer<GfetchForecastData_month3_items>
    _$gfetchForecastDataMonth3ItemsSerializer =
    new _$GfetchForecastData_month3_itemsSerializer();
Serializer<GfetchForecastData_month6> _$gfetchForecastDataMonth6Serializer =
    new _$GfetchForecastData_month6Serializer();
Serializer<GfetchForecastData_month6_items>
    _$gfetchForecastDataMonth6ItemsSerializer =
    new _$GfetchForecastData_month6_itemsSerializer();

class _$GfetchForecastDataSerializer
    implements StructuredSerializer<GfetchForecastData> {
  @override
  final Iterable<Type> types = const [GfetchForecastData, _$GfetchForecastData];
  @override
  final String wireName = 'GfetchForecastData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'daily',
      serializers.serialize(object.daily,
          specifiedType: const FullType(GfetchForecastData_daily)),
      'weekly',
      serializers.serialize(object.weekly,
          specifiedType: const FullType(GfetchForecastData_weekly)),
      'twoWeek',
      serializers.serialize(object.twoWeek,
          specifiedType: const FullType(GfetchForecastData_twoWeek)),
      'month1',
      serializers.serialize(object.month1,
          specifiedType: const FullType(GfetchForecastData_month1)),
      'month3',
      serializers.serialize(object.month3,
          specifiedType: const FullType(GfetchForecastData_month3)),
      'month6',
      serializers.serialize(object.month6,
          specifiedType: const FullType(GfetchForecastData_month6)),
    ];

    return result;
  }

  @override
  GfetchForecastData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'daily':
          result.daily.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GfetchForecastData_daily))!
              as GfetchForecastData_daily);
          break;
        case 'weekly':
          result.weekly.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GfetchForecastData_weekly))!
              as GfetchForecastData_weekly);
          break;
        case 'twoWeek':
          result.twoWeek.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GfetchForecastData_twoWeek))!
              as GfetchForecastData_twoWeek);
          break;
        case 'month1':
          result.month1.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GfetchForecastData_month1))!
              as GfetchForecastData_month1);
          break;
        case 'month3':
          result.month3.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GfetchForecastData_month3))!
              as GfetchForecastData_month3);
          break;
        case 'month6':
          result.month6.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GfetchForecastData_month6))!
              as GfetchForecastData_month6);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_dailySerializer
    implements StructuredSerializer<GfetchForecastData_daily> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_daily,
    _$GfetchForecastData_daily
  ];
  @override
  final String wireName = 'GfetchForecastData_daily';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_daily object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'areaName',
      serializers.serialize(object.areaName,
          specifiedType: const FullType(String)),
      'reportDatetime',
      serializers.serialize(object.reportDatetime,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchForecastData_daily_items)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_daily deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_dailyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'areaName':
          result.areaName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reportDatetime':
          result.reportDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchForecastData_daily_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_daily_itemsSerializer
    implements StructuredSerializer<GfetchForecastData_daily_items> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_daily_items,
    _$GfetchForecastData_daily_items
  ];
  @override
  final String wireName = 'GfetchForecastData_daily_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_daily_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'pop',
      serializers.serialize(object.pop,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];
    Object? value;
    value = object.jmaWeatherImgCode;
    if (value != null) {
      result
        ..add('jmaWeatherImgCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempMin;
    if (value != null) {
      result
        ..add('tempMin')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tempMax;
    if (value != null) {
      result
        ..add('tempMax')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GfetchForecastData_daily_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_daily_itemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'jmaWeatherImgCode':
          result.jmaWeatherImgCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pop':
          result.pop.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'tempMin':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tempMax':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_weeklySerializer
    implements StructuredSerializer<GfetchForecastData_weekly> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_weekly,
    _$GfetchForecastData_weekly
  ];
  @override
  final String wireName = 'GfetchForecastData_weekly';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_weekly object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'weekAreaName',
      serializers.serialize(object.weekAreaName,
          specifiedType: const FullType(String)),
      'reportDatetime',
      serializers.serialize(object.reportDatetime,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchForecastData_weekly_items)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_weekly deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_weeklyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'weekAreaName':
          result.weekAreaName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reportDatetime':
          result.reportDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchForecastData_weekly_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_weekly_itemsSerializer
    implements StructuredSerializer<GfetchForecastData_weekly_items> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_weekly_items,
    _$GfetchForecastData_weekly_items
  ];
  @override
  final String wireName = 'GfetchForecastData_weekly_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_weekly_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.jmaWeatherImgCode;
    if (value != null) {
      result
        ..add('jmaWeatherImgCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pop;
    if (value != null) {
      result
        ..add('pop')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tempMin;
    if (value != null) {
      result
        ..add('tempMin')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tempMax;
    if (value != null) {
      result
        ..add('tempMax')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tempMinUpper;
    if (value != null) {
      result
        ..add('tempMinUpper')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tempMinLower;
    if (value != null) {
      result
        ..add('tempMinLower')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tempMaxUpper;
    if (value != null) {
      result
        ..add('tempMaxUpper')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tempMaxLower;
    if (value != null) {
      result
        ..add('tempMaxLower')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GfetchForecastData_weekly_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_weekly_itemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'jmaWeatherImgCode':
          result.jmaWeatherImgCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tempMin':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tempMax':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tempMinUpper':
          result.tempMinUpper = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tempMinLower':
          result.tempMinLower = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tempMaxUpper':
          result.tempMaxUpper = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tempMaxLower':
          result.tempMaxLower = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_twoWeekSerializer
    implements StructuredSerializer<GfetchForecastData_twoWeek> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_twoWeek,
    _$GfetchForecastData_twoWeek
  ];
  @override
  final String wireName = 'GfetchForecastData_twoWeek';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_twoWeek object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'twoWeekAreaName',
      serializers.serialize(object.twoWeekAreaName,
          specifiedType: const FullType(String)),
      'reportDatetime',
      serializers.serialize(object.reportDatetime,
          specifiedType: const FullType(String)),
      'week1',
      serializers.serialize(object.week1,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchForecastData_twoWeek_week1)])),
      'week2',
      serializers.serialize(object.week2,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchForecastData_twoWeek_week2)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_twoWeek deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_twoWeekBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'twoWeekAreaName':
          result.twoWeekAreaName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reportDatetime':
          result.reportDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'week1':
          result.week1.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchForecastData_twoWeek_week1)
              ]))! as BuiltList<Object?>);
          break;
        case 'week2':
          result.week2.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchForecastData_twoWeek_week2)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_twoWeek_week1Serializer
    implements StructuredSerializer<GfetchForecastData_twoWeek_week1> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_twoWeek_week1,
    _$GfetchForecastData_twoWeek_week1
  ];
  @override
  final String wireName = 'GfetchForecastData_twoWeek_week1';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_twoWeek_week1 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'tempMin',
      serializers.serialize(object.tempMin, specifiedType: const FullType(int)),
      'tempMinUpper',
      serializers.serialize(object.tempMinUpper,
          specifiedType: const FullType(int)),
      'tempMinLower',
      serializers.serialize(object.tempMinLower,
          specifiedType: const FullType(int)),
      'tempMinNormal',
      serializers.serialize(object.tempMinNormal,
          specifiedType: const FullType(double)),
      'tempMax',
      serializers.serialize(object.tempMax, specifiedType: const FullType(int)),
      'tempMaxUpper',
      serializers.serialize(object.tempMaxUpper,
          specifiedType: const FullType(int)),
      'tempMaxLower',
      serializers.serialize(object.tempMaxLower,
          specifiedType: const FullType(int)),
      'tempMaxNormal',
      serializers.serialize(object.tempMaxNormal,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GfetchForecastData_twoWeek_week1 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_twoWeek_week1Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tempMin':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMinUpper':
          result.tempMinUpper = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMinLower':
          result.tempMinLower = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMinNormal':
          result.tempMinNormal = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'tempMax':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMaxUpper':
          result.tempMaxUpper = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMaxLower':
          result.tempMaxLower = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMaxNormal':
          result.tempMaxNormal = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_twoWeek_week2Serializer
    implements StructuredSerializer<GfetchForecastData_twoWeek_week2> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_twoWeek_week2,
    _$GfetchForecastData_twoWeek_week2
  ];
  @override
  final String wireName = 'GfetchForecastData_twoWeek_week2';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_twoWeek_week2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'tempMin',
      serializers.serialize(object.tempMin, specifiedType: const FullType(int)),
      'tempMinUpper',
      serializers.serialize(object.tempMinUpper,
          specifiedType: const FullType(int)),
      'tempMinLower',
      serializers.serialize(object.tempMinLower,
          specifiedType: const FullType(int)),
      'tempMinNormal',
      serializers.serialize(object.tempMinNormal,
          specifiedType: const FullType(double)),
      'tempMax',
      serializers.serialize(object.tempMax, specifiedType: const FullType(int)),
      'tempMaxUpper',
      serializers.serialize(object.tempMaxUpper,
          specifiedType: const FullType(int)),
      'tempMaxLower',
      serializers.serialize(object.tempMaxLower,
          specifiedType: const FullType(int)),
      'tempMaxNormal',
      serializers.serialize(object.tempMaxNormal,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GfetchForecastData_twoWeek_week2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_twoWeek_week2Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tempMin':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMinUpper':
          result.tempMinUpper = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMinLower':
          result.tempMinLower = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMinNormal':
          result.tempMinNormal = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'tempMax':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMaxUpper':
          result.tempMaxUpper = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMaxLower':
          result.tempMaxLower = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tempMaxNormal':
          result.tempMaxNormal = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_month1Serializer
    implements StructuredSerializer<GfetchForecastData_month1> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_month1,
    _$GfetchForecastData_month1
  ];
  @override
  final String wireName = 'GfetchForecastData_month1';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_month1 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'seasonAreaName',
      serializers.serialize(object.seasonAreaName,
          specifiedType: const FullType(String)),
      'reportDatetime',
      serializers.serialize(object.reportDatetime,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchForecastData_month1_items)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_month1 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_month1Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'seasonAreaName':
          result.seasonAreaName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reportDatetime':
          result.reportDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchForecastData_month1_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_month1_itemsSerializer
    implements StructuredSerializer<GfetchForecastData_month1_items> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_month1_items,
    _$GfetchForecastData_month1_items
  ];
  @override
  final String wireName = 'GfetchForecastData_month1_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_month1_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fromDate',
      serializers.serialize(object.fromDate,
          specifiedType: const FullType(String)),
      'toDate',
      serializers.serialize(object.toDate,
          specifiedType: const FullType(String)),
      'temperature',
      serializers.serialize(object.temperature,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_month1_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_month1_itemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fromDate':
          result.fromDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'toDate':
          result.toDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'temperature':
          result.temperature.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_month3Serializer
    implements StructuredSerializer<GfetchForecastData_month3> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_month3,
    _$GfetchForecastData_month3
  ];
  @override
  final String wireName = 'GfetchForecastData_month3';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_month3 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'seasonAreaName',
      serializers.serialize(object.seasonAreaName,
          specifiedType: const FullType(String)),
      'reportDatetime',
      serializers.serialize(object.reportDatetime,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchForecastData_month3_items)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_month3 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_month3Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'seasonAreaName':
          result.seasonAreaName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reportDatetime':
          result.reportDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchForecastData_month3_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_month3_itemsSerializer
    implements StructuredSerializer<GfetchForecastData_month3_items> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_month3_items,
    _$GfetchForecastData_month3_items
  ];
  @override
  final String wireName = 'GfetchForecastData_month3_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_month3_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fromDate',
      serializers.serialize(object.fromDate,
          specifiedType: const FullType(String)),
      'toDate',
      serializers.serialize(object.toDate,
          specifiedType: const FullType(String)),
      'temperature',
      serializers.serialize(object.temperature,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_month3_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_month3_itemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fromDate':
          result.fromDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'toDate':
          result.toDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'temperature':
          result.temperature.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_month6Serializer
    implements StructuredSerializer<GfetchForecastData_month6> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_month6,
    _$GfetchForecastData_month6
  ];
  @override
  final String wireName = 'GfetchForecastData_month6';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_month6 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'seasonAreaName',
      serializers.serialize(object.seasonAreaName,
          specifiedType: const FullType(String)),
      'reportDatetime',
      serializers.serialize(object.reportDatetime,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchForecastData_month6_items)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_month6 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_month6Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'seasonAreaName':
          result.seasonAreaName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reportDatetime':
          result.reportDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchForecastData_month6_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData_month6_itemsSerializer
    implements StructuredSerializer<GfetchForecastData_month6_items> {
  @override
  final Iterable<Type> types = const [
    GfetchForecastData_month6_items,
    _$GfetchForecastData_month6_items
  ];
  @override
  final String wireName = 'GfetchForecastData_month6_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastData_month6_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fromDate',
      serializers.serialize(object.fromDate,
          specifiedType: const FullType(String)),
      'toDate',
      serializers.serialize(object.toDate,
          specifiedType: const FullType(String)),
      'temperature',
      serializers.serialize(object.temperature,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GfetchForecastData_month6_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastData_month6_itemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fromDate':
          result.fromDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'toDate':
          result.toDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'temperature':
          result.temperature.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastData extends GfetchForecastData {
  @override
  final String G__typename;
  @override
  final GfetchForecastData_daily daily;
  @override
  final GfetchForecastData_weekly weekly;
  @override
  final GfetchForecastData_twoWeek twoWeek;
  @override
  final GfetchForecastData_month1 month1;
  @override
  final GfetchForecastData_month3 month3;
  @override
  final GfetchForecastData_month6 month6;

  factory _$GfetchForecastData(
          [void Function(GfetchForecastDataBuilder)? updates]) =>
      (new GfetchForecastDataBuilder()..update(updates))._build();

  _$GfetchForecastData._(
      {required this.G__typename,
      required this.daily,
      required this.weekly,
      required this.twoWeek,
      required this.month1,
      required this.month3,
      required this.month6})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        daily, r'GfetchForecastData', 'daily');
    BuiltValueNullFieldError.checkNotNull(
        weekly, r'GfetchForecastData', 'weekly');
    BuiltValueNullFieldError.checkNotNull(
        twoWeek, r'GfetchForecastData', 'twoWeek');
    BuiltValueNullFieldError.checkNotNull(
        month1, r'GfetchForecastData', 'month1');
    BuiltValueNullFieldError.checkNotNull(
        month3, r'GfetchForecastData', 'month3');
    BuiltValueNullFieldError.checkNotNull(
        month6, r'GfetchForecastData', 'month6');
  }

  @override
  GfetchForecastData rebuild(
          void Function(GfetchForecastDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastDataBuilder toBuilder() =>
      new GfetchForecastDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData &&
        G__typename == other.G__typename &&
        daily == other.daily &&
        weekly == other.weekly &&
        twoWeek == other.twoWeek &&
        month1 == other.month1 &&
        month3 == other.month3 &&
        month6 == other.month6;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), daily.hashCode),
                        weekly.hashCode),
                    twoWeek.hashCode),
                month1.hashCode),
            month3.hashCode),
        month6.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData')
          ..add('G__typename', G__typename)
          ..add('daily', daily)
          ..add('weekly', weekly)
          ..add('twoWeek', twoWeek)
          ..add('month1', month1)
          ..add('month3', month3)
          ..add('month6', month6))
        .toString();
  }
}

class GfetchForecastDataBuilder
    implements Builder<GfetchForecastData, GfetchForecastDataBuilder> {
  _$GfetchForecastData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GfetchForecastData_dailyBuilder? _daily;
  GfetchForecastData_dailyBuilder get daily =>
      _$this._daily ??= new GfetchForecastData_dailyBuilder();
  set daily(GfetchForecastData_dailyBuilder? daily) => _$this._daily = daily;

  GfetchForecastData_weeklyBuilder? _weekly;
  GfetchForecastData_weeklyBuilder get weekly =>
      _$this._weekly ??= new GfetchForecastData_weeklyBuilder();
  set weekly(GfetchForecastData_weeklyBuilder? weekly) =>
      _$this._weekly = weekly;

  GfetchForecastData_twoWeekBuilder? _twoWeek;
  GfetchForecastData_twoWeekBuilder get twoWeek =>
      _$this._twoWeek ??= new GfetchForecastData_twoWeekBuilder();
  set twoWeek(GfetchForecastData_twoWeekBuilder? twoWeek) =>
      _$this._twoWeek = twoWeek;

  GfetchForecastData_month1Builder? _month1;
  GfetchForecastData_month1Builder get month1 =>
      _$this._month1 ??= new GfetchForecastData_month1Builder();
  set month1(GfetchForecastData_month1Builder? month1) =>
      _$this._month1 = month1;

  GfetchForecastData_month3Builder? _month3;
  GfetchForecastData_month3Builder get month3 =>
      _$this._month3 ??= new GfetchForecastData_month3Builder();
  set month3(GfetchForecastData_month3Builder? month3) =>
      _$this._month3 = month3;

  GfetchForecastData_month6Builder? _month6;
  GfetchForecastData_month6Builder get month6 =>
      _$this._month6 ??= new GfetchForecastData_month6Builder();
  set month6(GfetchForecastData_month6Builder? month6) =>
      _$this._month6 = month6;

  GfetchForecastDataBuilder() {
    GfetchForecastData._initializeBuilder(this);
  }

  GfetchForecastDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _daily = $v.daily.toBuilder();
      _weekly = $v.weekly.toBuilder();
      _twoWeek = $v.twoWeek.toBuilder();
      _month1 = $v.month1.toBuilder();
      _month3 = $v.month3.toBuilder();
      _month6 = $v.month6.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData;
  }

  @override
  void update(void Function(GfetchForecastDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData build() => _build();

  _$GfetchForecastData _build() {
    _$GfetchForecastData _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchForecastData', 'G__typename'),
              daily: daily.build(),
              weekly: weekly.build(),
              twoWeek: twoWeek.build(),
              month1: month1.build(),
              month3: month3.build(),
              month6: month6.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'daily';
        daily.build();
        _$failedField = 'weekly';
        weekly.build();
        _$failedField = 'twoWeek';
        twoWeek.build();
        _$failedField = 'month1';
        month1.build();
        _$failedField = 'month3';
        month3.build();
        _$failedField = 'month6';
        month6.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_daily extends GfetchForecastData_daily {
  @override
  final String G__typename;
  @override
  final String areaName;
  @override
  final String reportDatetime;
  @override
  final BuiltList<GfetchForecastData_daily_items> items;

  factory _$GfetchForecastData_daily(
          [void Function(GfetchForecastData_dailyBuilder)? updates]) =>
      (new GfetchForecastData_dailyBuilder()..update(updates))._build();

  _$GfetchForecastData_daily._(
      {required this.G__typename,
      required this.areaName,
      required this.reportDatetime,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_daily', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        areaName, r'GfetchForecastData_daily', 'areaName');
    BuiltValueNullFieldError.checkNotNull(
        reportDatetime, r'GfetchForecastData_daily', 'reportDatetime');
    BuiltValueNullFieldError.checkNotNull(
        items, r'GfetchForecastData_daily', 'items');
  }

  @override
  GfetchForecastData_daily rebuild(
          void Function(GfetchForecastData_dailyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_dailyBuilder toBuilder() =>
      new GfetchForecastData_dailyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_daily &&
        G__typename == other.G__typename &&
        areaName == other.areaName &&
        reportDatetime == other.reportDatetime &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), areaName.hashCode),
            reportDatetime.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_daily')
          ..add('G__typename', G__typename)
          ..add('areaName', areaName)
          ..add('reportDatetime', reportDatetime)
          ..add('items', items))
        .toString();
  }
}

class GfetchForecastData_dailyBuilder
    implements
        Builder<GfetchForecastData_daily, GfetchForecastData_dailyBuilder> {
  _$GfetchForecastData_daily? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  String? _reportDatetime;
  String? get reportDatetime => _$this._reportDatetime;
  set reportDatetime(String? reportDatetime) =>
      _$this._reportDatetime = reportDatetime;

  ListBuilder<GfetchForecastData_daily_items>? _items;
  ListBuilder<GfetchForecastData_daily_items> get items =>
      _$this._items ??= new ListBuilder<GfetchForecastData_daily_items>();
  set items(ListBuilder<GfetchForecastData_daily_items>? items) =>
      _$this._items = items;

  GfetchForecastData_dailyBuilder() {
    GfetchForecastData_daily._initializeBuilder(this);
  }

  GfetchForecastData_dailyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _areaName = $v.areaName;
      _reportDatetime = $v.reportDatetime;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_daily other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_daily;
  }

  @override
  void update(void Function(GfetchForecastData_dailyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_daily build() => _build();

  _$GfetchForecastData_daily _build() {
    _$GfetchForecastData_daily _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_daily._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchForecastData_daily', 'G__typename'),
              areaName: BuiltValueNullFieldError.checkNotNull(
                  areaName, r'GfetchForecastData_daily', 'areaName'),
              reportDatetime: BuiltValueNullFieldError.checkNotNull(
                  reportDatetime,
                  r'GfetchForecastData_daily',
                  'reportDatetime'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_daily', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_daily_items extends GfetchForecastData_daily_items {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final String? jmaWeatherImgCode;
  @override
  final BuiltList<int> pop;
  @override
  final int? tempMin;
  @override
  final int? tempMax;

  factory _$GfetchForecastData_daily_items(
          [void Function(GfetchForecastData_daily_itemsBuilder)? updates]) =>
      (new GfetchForecastData_daily_itemsBuilder()..update(updates))._build();

  _$GfetchForecastData_daily_items._(
      {required this.G__typename,
      required this.date,
      this.jmaWeatherImgCode,
      required this.pop,
      this.tempMin,
      this.tempMax})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_daily_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GfetchForecastData_daily_items', 'date');
    BuiltValueNullFieldError.checkNotNull(
        pop, r'GfetchForecastData_daily_items', 'pop');
  }

  @override
  GfetchForecastData_daily_items rebuild(
          void Function(GfetchForecastData_daily_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_daily_itemsBuilder toBuilder() =>
      new GfetchForecastData_daily_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_daily_items &&
        G__typename == other.G__typename &&
        date == other.date &&
        jmaWeatherImgCode == other.jmaWeatherImgCode &&
        pop == other.pop &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), date.hashCode),
                    jmaWeatherImgCode.hashCode),
                pop.hashCode),
            tempMin.hashCode),
        tempMax.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_daily_items')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('jmaWeatherImgCode', jmaWeatherImgCode)
          ..add('pop', pop)
          ..add('tempMin', tempMin)
          ..add('tempMax', tempMax))
        .toString();
  }
}

class GfetchForecastData_daily_itemsBuilder
    implements
        Builder<GfetchForecastData_daily_items,
            GfetchForecastData_daily_itemsBuilder> {
  _$GfetchForecastData_daily_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _jmaWeatherImgCode;
  String? get jmaWeatherImgCode => _$this._jmaWeatherImgCode;
  set jmaWeatherImgCode(String? jmaWeatherImgCode) =>
      _$this._jmaWeatherImgCode = jmaWeatherImgCode;

  ListBuilder<int>? _pop;
  ListBuilder<int> get pop => _$this._pop ??= new ListBuilder<int>();
  set pop(ListBuilder<int>? pop) => _$this._pop = pop;

  int? _tempMin;
  int? get tempMin => _$this._tempMin;
  set tempMin(int? tempMin) => _$this._tempMin = tempMin;

  int? _tempMax;
  int? get tempMax => _$this._tempMax;
  set tempMax(int? tempMax) => _$this._tempMax = tempMax;

  GfetchForecastData_daily_itemsBuilder() {
    GfetchForecastData_daily_items._initializeBuilder(this);
  }

  GfetchForecastData_daily_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _jmaWeatherImgCode = $v.jmaWeatherImgCode;
      _pop = $v.pop.toBuilder();
      _tempMin = $v.tempMin;
      _tempMax = $v.tempMax;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_daily_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_daily_items;
  }

  @override
  void update(void Function(GfetchForecastData_daily_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_daily_items build() => _build();

  _$GfetchForecastData_daily_items _build() {
    _$GfetchForecastData_daily_items _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_daily_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GfetchForecastData_daily_items', 'G__typename'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'GfetchForecastData_daily_items', 'date'),
              jmaWeatherImgCode: jmaWeatherImgCode,
              pop: pop.build(),
              tempMin: tempMin,
              tempMax: tempMax);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pop';
        pop.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_daily_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_weekly extends GfetchForecastData_weekly {
  @override
  final String G__typename;
  @override
  final String weekAreaName;
  @override
  final String reportDatetime;
  @override
  final BuiltList<GfetchForecastData_weekly_items> items;

  factory _$GfetchForecastData_weekly(
          [void Function(GfetchForecastData_weeklyBuilder)? updates]) =>
      (new GfetchForecastData_weeklyBuilder()..update(updates))._build();

  _$GfetchForecastData_weekly._(
      {required this.G__typename,
      required this.weekAreaName,
      required this.reportDatetime,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_weekly', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        weekAreaName, r'GfetchForecastData_weekly', 'weekAreaName');
    BuiltValueNullFieldError.checkNotNull(
        reportDatetime, r'GfetchForecastData_weekly', 'reportDatetime');
    BuiltValueNullFieldError.checkNotNull(
        items, r'GfetchForecastData_weekly', 'items');
  }

  @override
  GfetchForecastData_weekly rebuild(
          void Function(GfetchForecastData_weeklyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_weeklyBuilder toBuilder() =>
      new GfetchForecastData_weeklyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_weekly &&
        G__typename == other.G__typename &&
        weekAreaName == other.weekAreaName &&
        reportDatetime == other.reportDatetime &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), weekAreaName.hashCode),
            reportDatetime.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_weekly')
          ..add('G__typename', G__typename)
          ..add('weekAreaName', weekAreaName)
          ..add('reportDatetime', reportDatetime)
          ..add('items', items))
        .toString();
  }
}

class GfetchForecastData_weeklyBuilder
    implements
        Builder<GfetchForecastData_weekly, GfetchForecastData_weeklyBuilder> {
  _$GfetchForecastData_weekly? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _weekAreaName;
  String? get weekAreaName => _$this._weekAreaName;
  set weekAreaName(String? weekAreaName) => _$this._weekAreaName = weekAreaName;

  String? _reportDatetime;
  String? get reportDatetime => _$this._reportDatetime;
  set reportDatetime(String? reportDatetime) =>
      _$this._reportDatetime = reportDatetime;

  ListBuilder<GfetchForecastData_weekly_items>? _items;
  ListBuilder<GfetchForecastData_weekly_items> get items =>
      _$this._items ??= new ListBuilder<GfetchForecastData_weekly_items>();
  set items(ListBuilder<GfetchForecastData_weekly_items>? items) =>
      _$this._items = items;

  GfetchForecastData_weeklyBuilder() {
    GfetchForecastData_weekly._initializeBuilder(this);
  }

  GfetchForecastData_weeklyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _weekAreaName = $v.weekAreaName;
      _reportDatetime = $v.reportDatetime;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_weekly other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_weekly;
  }

  @override
  void update(void Function(GfetchForecastData_weeklyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_weekly build() => _build();

  _$GfetchForecastData_weekly _build() {
    _$GfetchForecastData_weekly _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_weekly._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchForecastData_weekly', 'G__typename'),
              weekAreaName: BuiltValueNullFieldError.checkNotNull(
                  weekAreaName, r'GfetchForecastData_weekly', 'weekAreaName'),
              reportDatetime: BuiltValueNullFieldError.checkNotNull(
                  reportDatetime,
                  r'GfetchForecastData_weekly',
                  'reportDatetime'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_weekly', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_weekly_items
    extends GfetchForecastData_weekly_items {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final String? jmaWeatherImgCode;
  @override
  final int? pop;
  @override
  final int? tempMin;
  @override
  final int? tempMax;
  @override
  final int? tempMinUpper;
  @override
  final int? tempMinLower;
  @override
  final int? tempMaxUpper;
  @override
  final int? tempMaxLower;

  factory _$GfetchForecastData_weekly_items(
          [void Function(GfetchForecastData_weekly_itemsBuilder)? updates]) =>
      (new GfetchForecastData_weekly_itemsBuilder()..update(updates))._build();

  _$GfetchForecastData_weekly_items._(
      {required this.G__typename,
      required this.date,
      this.jmaWeatherImgCode,
      this.pop,
      this.tempMin,
      this.tempMax,
      this.tempMinUpper,
      this.tempMinLower,
      this.tempMaxUpper,
      this.tempMaxLower})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_weekly_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GfetchForecastData_weekly_items', 'date');
  }

  @override
  GfetchForecastData_weekly_items rebuild(
          void Function(GfetchForecastData_weekly_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_weekly_itemsBuilder toBuilder() =>
      new GfetchForecastData_weekly_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_weekly_items &&
        G__typename == other.G__typename &&
        date == other.date &&
        jmaWeatherImgCode == other.jmaWeatherImgCode &&
        pop == other.pop &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        tempMinUpper == other.tempMinUpper &&
        tempMinLower == other.tempMinLower &&
        tempMaxUpper == other.tempMaxUpper &&
        tempMaxLower == other.tempMaxLower;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        date.hashCode),
                                    jmaWeatherImgCode.hashCode),
                                pop.hashCode),
                            tempMin.hashCode),
                        tempMax.hashCode),
                    tempMinUpper.hashCode),
                tempMinLower.hashCode),
            tempMaxUpper.hashCode),
        tempMaxLower.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_weekly_items')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('jmaWeatherImgCode', jmaWeatherImgCode)
          ..add('pop', pop)
          ..add('tempMin', tempMin)
          ..add('tempMax', tempMax)
          ..add('tempMinUpper', tempMinUpper)
          ..add('tempMinLower', tempMinLower)
          ..add('tempMaxUpper', tempMaxUpper)
          ..add('tempMaxLower', tempMaxLower))
        .toString();
  }
}

class GfetchForecastData_weekly_itemsBuilder
    implements
        Builder<GfetchForecastData_weekly_items,
            GfetchForecastData_weekly_itemsBuilder> {
  _$GfetchForecastData_weekly_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _jmaWeatherImgCode;
  String? get jmaWeatherImgCode => _$this._jmaWeatherImgCode;
  set jmaWeatherImgCode(String? jmaWeatherImgCode) =>
      _$this._jmaWeatherImgCode = jmaWeatherImgCode;

  int? _pop;
  int? get pop => _$this._pop;
  set pop(int? pop) => _$this._pop = pop;

  int? _tempMin;
  int? get tempMin => _$this._tempMin;
  set tempMin(int? tempMin) => _$this._tempMin = tempMin;

  int? _tempMax;
  int? get tempMax => _$this._tempMax;
  set tempMax(int? tempMax) => _$this._tempMax = tempMax;

  int? _tempMinUpper;
  int? get tempMinUpper => _$this._tempMinUpper;
  set tempMinUpper(int? tempMinUpper) => _$this._tempMinUpper = tempMinUpper;

  int? _tempMinLower;
  int? get tempMinLower => _$this._tempMinLower;
  set tempMinLower(int? tempMinLower) => _$this._tempMinLower = tempMinLower;

  int? _tempMaxUpper;
  int? get tempMaxUpper => _$this._tempMaxUpper;
  set tempMaxUpper(int? tempMaxUpper) => _$this._tempMaxUpper = tempMaxUpper;

  int? _tempMaxLower;
  int? get tempMaxLower => _$this._tempMaxLower;
  set tempMaxLower(int? tempMaxLower) => _$this._tempMaxLower = tempMaxLower;

  GfetchForecastData_weekly_itemsBuilder() {
    GfetchForecastData_weekly_items._initializeBuilder(this);
  }

  GfetchForecastData_weekly_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _jmaWeatherImgCode = $v.jmaWeatherImgCode;
      _pop = $v.pop;
      _tempMin = $v.tempMin;
      _tempMax = $v.tempMax;
      _tempMinUpper = $v.tempMinUpper;
      _tempMinLower = $v.tempMinLower;
      _tempMaxUpper = $v.tempMaxUpper;
      _tempMaxLower = $v.tempMaxLower;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_weekly_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_weekly_items;
  }

  @override
  void update(void Function(GfetchForecastData_weekly_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_weekly_items build() => _build();

  _$GfetchForecastData_weekly_items _build() {
    final _$result = _$v ??
        new _$GfetchForecastData_weekly_items._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GfetchForecastData_weekly_items', 'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'GfetchForecastData_weekly_items', 'date'),
            jmaWeatherImgCode: jmaWeatherImgCode,
            pop: pop,
            tempMin: tempMin,
            tempMax: tempMax,
            tempMinUpper: tempMinUpper,
            tempMinLower: tempMinLower,
            tempMaxUpper: tempMaxUpper,
            tempMaxLower: tempMaxLower);
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_twoWeek extends GfetchForecastData_twoWeek {
  @override
  final String G__typename;
  @override
  final String twoWeekAreaName;
  @override
  final String reportDatetime;
  @override
  final BuiltList<GfetchForecastData_twoWeek_week1> week1;
  @override
  final BuiltList<GfetchForecastData_twoWeek_week2> week2;

  factory _$GfetchForecastData_twoWeek(
          [void Function(GfetchForecastData_twoWeekBuilder)? updates]) =>
      (new GfetchForecastData_twoWeekBuilder()..update(updates))._build();

  _$GfetchForecastData_twoWeek._(
      {required this.G__typename,
      required this.twoWeekAreaName,
      required this.reportDatetime,
      required this.week1,
      required this.week2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_twoWeek', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        twoWeekAreaName, r'GfetchForecastData_twoWeek', 'twoWeekAreaName');
    BuiltValueNullFieldError.checkNotNull(
        reportDatetime, r'GfetchForecastData_twoWeek', 'reportDatetime');
    BuiltValueNullFieldError.checkNotNull(
        week1, r'GfetchForecastData_twoWeek', 'week1');
    BuiltValueNullFieldError.checkNotNull(
        week2, r'GfetchForecastData_twoWeek', 'week2');
  }

  @override
  GfetchForecastData_twoWeek rebuild(
          void Function(GfetchForecastData_twoWeekBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_twoWeekBuilder toBuilder() =>
      new GfetchForecastData_twoWeekBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_twoWeek &&
        G__typename == other.G__typename &&
        twoWeekAreaName == other.twoWeekAreaName &&
        reportDatetime == other.reportDatetime &&
        week1 == other.week1 &&
        week2 == other.week2;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), twoWeekAreaName.hashCode),
                reportDatetime.hashCode),
            week1.hashCode),
        week2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_twoWeek')
          ..add('G__typename', G__typename)
          ..add('twoWeekAreaName', twoWeekAreaName)
          ..add('reportDatetime', reportDatetime)
          ..add('week1', week1)
          ..add('week2', week2))
        .toString();
  }
}

class GfetchForecastData_twoWeekBuilder
    implements
        Builder<GfetchForecastData_twoWeek, GfetchForecastData_twoWeekBuilder> {
  _$GfetchForecastData_twoWeek? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _twoWeekAreaName;
  String? get twoWeekAreaName => _$this._twoWeekAreaName;
  set twoWeekAreaName(String? twoWeekAreaName) =>
      _$this._twoWeekAreaName = twoWeekAreaName;

  String? _reportDatetime;
  String? get reportDatetime => _$this._reportDatetime;
  set reportDatetime(String? reportDatetime) =>
      _$this._reportDatetime = reportDatetime;

  ListBuilder<GfetchForecastData_twoWeek_week1>? _week1;
  ListBuilder<GfetchForecastData_twoWeek_week1> get week1 =>
      _$this._week1 ??= new ListBuilder<GfetchForecastData_twoWeek_week1>();
  set week1(ListBuilder<GfetchForecastData_twoWeek_week1>? week1) =>
      _$this._week1 = week1;

  ListBuilder<GfetchForecastData_twoWeek_week2>? _week2;
  ListBuilder<GfetchForecastData_twoWeek_week2> get week2 =>
      _$this._week2 ??= new ListBuilder<GfetchForecastData_twoWeek_week2>();
  set week2(ListBuilder<GfetchForecastData_twoWeek_week2>? week2) =>
      _$this._week2 = week2;

  GfetchForecastData_twoWeekBuilder() {
    GfetchForecastData_twoWeek._initializeBuilder(this);
  }

  GfetchForecastData_twoWeekBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _twoWeekAreaName = $v.twoWeekAreaName;
      _reportDatetime = $v.reportDatetime;
      _week1 = $v.week1.toBuilder();
      _week2 = $v.week2.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_twoWeek other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_twoWeek;
  }

  @override
  void update(void Function(GfetchForecastData_twoWeekBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_twoWeek build() => _build();

  _$GfetchForecastData_twoWeek _build() {
    _$GfetchForecastData_twoWeek _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_twoWeek._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchForecastData_twoWeek', 'G__typename'),
              twoWeekAreaName: BuiltValueNullFieldError.checkNotNull(
                  twoWeekAreaName,
                  r'GfetchForecastData_twoWeek',
                  'twoWeekAreaName'),
              reportDatetime: BuiltValueNullFieldError.checkNotNull(
                  reportDatetime,
                  r'GfetchForecastData_twoWeek',
                  'reportDatetime'),
              week1: week1.build(),
              week2: week2.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'week1';
        week1.build();
        _$failedField = 'week2';
        week2.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_twoWeek', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_twoWeek_week1
    extends GfetchForecastData_twoWeek_week1 {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final int tempMin;
  @override
  final int tempMinUpper;
  @override
  final int tempMinLower;
  @override
  final double tempMinNormal;
  @override
  final int tempMax;
  @override
  final int tempMaxUpper;
  @override
  final int tempMaxLower;
  @override
  final double tempMaxNormal;

  factory _$GfetchForecastData_twoWeek_week1(
          [void Function(GfetchForecastData_twoWeek_week1Builder)? updates]) =>
      (new GfetchForecastData_twoWeek_week1Builder()..update(updates))._build();

  _$GfetchForecastData_twoWeek_week1._(
      {required this.G__typename,
      required this.date,
      required this.tempMin,
      required this.tempMinUpper,
      required this.tempMinLower,
      required this.tempMinNormal,
      required this.tempMax,
      required this.tempMaxUpper,
      required this.tempMaxLower,
      required this.tempMaxNormal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_twoWeek_week1', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GfetchForecastData_twoWeek_week1', 'date');
    BuiltValueNullFieldError.checkNotNull(
        tempMin, r'GfetchForecastData_twoWeek_week1', 'tempMin');
    BuiltValueNullFieldError.checkNotNull(
        tempMinUpper, r'GfetchForecastData_twoWeek_week1', 'tempMinUpper');
    BuiltValueNullFieldError.checkNotNull(
        tempMinLower, r'GfetchForecastData_twoWeek_week1', 'tempMinLower');
    BuiltValueNullFieldError.checkNotNull(
        tempMinNormal, r'GfetchForecastData_twoWeek_week1', 'tempMinNormal');
    BuiltValueNullFieldError.checkNotNull(
        tempMax, r'GfetchForecastData_twoWeek_week1', 'tempMax');
    BuiltValueNullFieldError.checkNotNull(
        tempMaxUpper, r'GfetchForecastData_twoWeek_week1', 'tempMaxUpper');
    BuiltValueNullFieldError.checkNotNull(
        tempMaxLower, r'GfetchForecastData_twoWeek_week1', 'tempMaxLower');
    BuiltValueNullFieldError.checkNotNull(
        tempMaxNormal, r'GfetchForecastData_twoWeek_week1', 'tempMaxNormal');
  }

  @override
  GfetchForecastData_twoWeek_week1 rebuild(
          void Function(GfetchForecastData_twoWeek_week1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_twoWeek_week1Builder toBuilder() =>
      new GfetchForecastData_twoWeek_week1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_twoWeek_week1 &&
        G__typename == other.G__typename &&
        date == other.date &&
        tempMin == other.tempMin &&
        tempMinUpper == other.tempMinUpper &&
        tempMinLower == other.tempMinLower &&
        tempMinNormal == other.tempMinNormal &&
        tempMax == other.tempMax &&
        tempMaxUpper == other.tempMaxUpper &&
        tempMaxLower == other.tempMaxLower &&
        tempMaxNormal == other.tempMaxNormal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        date.hashCode),
                                    tempMin.hashCode),
                                tempMinUpper.hashCode),
                            tempMinLower.hashCode),
                        tempMinNormal.hashCode),
                    tempMax.hashCode),
                tempMaxUpper.hashCode),
            tempMaxLower.hashCode),
        tempMaxNormal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_twoWeek_week1')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('tempMin', tempMin)
          ..add('tempMinUpper', tempMinUpper)
          ..add('tempMinLower', tempMinLower)
          ..add('tempMinNormal', tempMinNormal)
          ..add('tempMax', tempMax)
          ..add('tempMaxUpper', tempMaxUpper)
          ..add('tempMaxLower', tempMaxLower)
          ..add('tempMaxNormal', tempMaxNormal))
        .toString();
  }
}

class GfetchForecastData_twoWeek_week1Builder
    implements
        Builder<GfetchForecastData_twoWeek_week1,
            GfetchForecastData_twoWeek_week1Builder> {
  _$GfetchForecastData_twoWeek_week1? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _tempMin;
  int? get tempMin => _$this._tempMin;
  set tempMin(int? tempMin) => _$this._tempMin = tempMin;

  int? _tempMinUpper;
  int? get tempMinUpper => _$this._tempMinUpper;
  set tempMinUpper(int? tempMinUpper) => _$this._tempMinUpper = tempMinUpper;

  int? _tempMinLower;
  int? get tempMinLower => _$this._tempMinLower;
  set tempMinLower(int? tempMinLower) => _$this._tempMinLower = tempMinLower;

  double? _tempMinNormal;
  double? get tempMinNormal => _$this._tempMinNormal;
  set tempMinNormal(double? tempMinNormal) =>
      _$this._tempMinNormal = tempMinNormal;

  int? _tempMax;
  int? get tempMax => _$this._tempMax;
  set tempMax(int? tempMax) => _$this._tempMax = tempMax;

  int? _tempMaxUpper;
  int? get tempMaxUpper => _$this._tempMaxUpper;
  set tempMaxUpper(int? tempMaxUpper) => _$this._tempMaxUpper = tempMaxUpper;

  int? _tempMaxLower;
  int? get tempMaxLower => _$this._tempMaxLower;
  set tempMaxLower(int? tempMaxLower) => _$this._tempMaxLower = tempMaxLower;

  double? _tempMaxNormal;
  double? get tempMaxNormal => _$this._tempMaxNormal;
  set tempMaxNormal(double? tempMaxNormal) =>
      _$this._tempMaxNormal = tempMaxNormal;

  GfetchForecastData_twoWeek_week1Builder() {
    GfetchForecastData_twoWeek_week1._initializeBuilder(this);
  }

  GfetchForecastData_twoWeek_week1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _tempMin = $v.tempMin;
      _tempMinUpper = $v.tempMinUpper;
      _tempMinLower = $v.tempMinLower;
      _tempMinNormal = $v.tempMinNormal;
      _tempMax = $v.tempMax;
      _tempMaxUpper = $v.tempMaxUpper;
      _tempMaxLower = $v.tempMaxLower;
      _tempMaxNormal = $v.tempMaxNormal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_twoWeek_week1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_twoWeek_week1;
  }

  @override
  void update(void Function(GfetchForecastData_twoWeek_week1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_twoWeek_week1 build() => _build();

  _$GfetchForecastData_twoWeek_week1 _build() {
    final _$result = _$v ??
        new _$GfetchForecastData_twoWeek_week1._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GfetchForecastData_twoWeek_week1', 'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'GfetchForecastData_twoWeek_week1', 'date'),
            tempMin: BuiltValueNullFieldError.checkNotNull(
                tempMin, r'GfetchForecastData_twoWeek_week1', 'tempMin'),
            tempMinUpper: BuiltValueNullFieldError.checkNotNull(
                tempMinUpper, r'GfetchForecastData_twoWeek_week1', 'tempMinUpper'),
            tempMinLower: BuiltValueNullFieldError.checkNotNull(
                tempMinLower, r'GfetchForecastData_twoWeek_week1', 'tempMinLower'),
            tempMinNormal: BuiltValueNullFieldError.checkNotNull(
                tempMinNormal, r'GfetchForecastData_twoWeek_week1', 'tempMinNormal'),
            tempMax: BuiltValueNullFieldError.checkNotNull(
                tempMax, r'GfetchForecastData_twoWeek_week1', 'tempMax'),
            tempMaxUpper:
                BuiltValueNullFieldError.checkNotNull(tempMaxUpper, r'GfetchForecastData_twoWeek_week1', 'tempMaxUpper'),
            tempMaxLower: BuiltValueNullFieldError.checkNotNull(tempMaxLower, r'GfetchForecastData_twoWeek_week1', 'tempMaxLower'),
            tempMaxNormal: BuiltValueNullFieldError.checkNotNull(tempMaxNormal, r'GfetchForecastData_twoWeek_week1', 'tempMaxNormal'));
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_twoWeek_week2
    extends GfetchForecastData_twoWeek_week2 {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final int tempMin;
  @override
  final int tempMinUpper;
  @override
  final int tempMinLower;
  @override
  final double tempMinNormal;
  @override
  final int tempMax;
  @override
  final int tempMaxUpper;
  @override
  final int tempMaxLower;
  @override
  final double tempMaxNormal;

  factory _$GfetchForecastData_twoWeek_week2(
          [void Function(GfetchForecastData_twoWeek_week2Builder)? updates]) =>
      (new GfetchForecastData_twoWeek_week2Builder()..update(updates))._build();

  _$GfetchForecastData_twoWeek_week2._(
      {required this.G__typename,
      required this.date,
      required this.tempMin,
      required this.tempMinUpper,
      required this.tempMinLower,
      required this.tempMinNormal,
      required this.tempMax,
      required this.tempMaxUpper,
      required this.tempMaxLower,
      required this.tempMaxNormal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_twoWeek_week2', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GfetchForecastData_twoWeek_week2', 'date');
    BuiltValueNullFieldError.checkNotNull(
        tempMin, r'GfetchForecastData_twoWeek_week2', 'tempMin');
    BuiltValueNullFieldError.checkNotNull(
        tempMinUpper, r'GfetchForecastData_twoWeek_week2', 'tempMinUpper');
    BuiltValueNullFieldError.checkNotNull(
        tempMinLower, r'GfetchForecastData_twoWeek_week2', 'tempMinLower');
    BuiltValueNullFieldError.checkNotNull(
        tempMinNormal, r'GfetchForecastData_twoWeek_week2', 'tempMinNormal');
    BuiltValueNullFieldError.checkNotNull(
        tempMax, r'GfetchForecastData_twoWeek_week2', 'tempMax');
    BuiltValueNullFieldError.checkNotNull(
        tempMaxUpper, r'GfetchForecastData_twoWeek_week2', 'tempMaxUpper');
    BuiltValueNullFieldError.checkNotNull(
        tempMaxLower, r'GfetchForecastData_twoWeek_week2', 'tempMaxLower');
    BuiltValueNullFieldError.checkNotNull(
        tempMaxNormal, r'GfetchForecastData_twoWeek_week2', 'tempMaxNormal');
  }

  @override
  GfetchForecastData_twoWeek_week2 rebuild(
          void Function(GfetchForecastData_twoWeek_week2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_twoWeek_week2Builder toBuilder() =>
      new GfetchForecastData_twoWeek_week2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_twoWeek_week2 &&
        G__typename == other.G__typename &&
        date == other.date &&
        tempMin == other.tempMin &&
        tempMinUpper == other.tempMinUpper &&
        tempMinLower == other.tempMinLower &&
        tempMinNormal == other.tempMinNormal &&
        tempMax == other.tempMax &&
        tempMaxUpper == other.tempMaxUpper &&
        tempMaxLower == other.tempMaxLower &&
        tempMaxNormal == other.tempMaxNormal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        date.hashCode),
                                    tempMin.hashCode),
                                tempMinUpper.hashCode),
                            tempMinLower.hashCode),
                        tempMinNormal.hashCode),
                    tempMax.hashCode),
                tempMaxUpper.hashCode),
            tempMaxLower.hashCode),
        tempMaxNormal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_twoWeek_week2')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('tempMin', tempMin)
          ..add('tempMinUpper', tempMinUpper)
          ..add('tempMinLower', tempMinLower)
          ..add('tempMinNormal', tempMinNormal)
          ..add('tempMax', tempMax)
          ..add('tempMaxUpper', tempMaxUpper)
          ..add('tempMaxLower', tempMaxLower)
          ..add('tempMaxNormal', tempMaxNormal))
        .toString();
  }
}

class GfetchForecastData_twoWeek_week2Builder
    implements
        Builder<GfetchForecastData_twoWeek_week2,
            GfetchForecastData_twoWeek_week2Builder> {
  _$GfetchForecastData_twoWeek_week2? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _tempMin;
  int? get tempMin => _$this._tempMin;
  set tempMin(int? tempMin) => _$this._tempMin = tempMin;

  int? _tempMinUpper;
  int? get tempMinUpper => _$this._tempMinUpper;
  set tempMinUpper(int? tempMinUpper) => _$this._tempMinUpper = tempMinUpper;

  int? _tempMinLower;
  int? get tempMinLower => _$this._tempMinLower;
  set tempMinLower(int? tempMinLower) => _$this._tempMinLower = tempMinLower;

  double? _tempMinNormal;
  double? get tempMinNormal => _$this._tempMinNormal;
  set tempMinNormal(double? tempMinNormal) =>
      _$this._tempMinNormal = tempMinNormal;

  int? _tempMax;
  int? get tempMax => _$this._tempMax;
  set tempMax(int? tempMax) => _$this._tempMax = tempMax;

  int? _tempMaxUpper;
  int? get tempMaxUpper => _$this._tempMaxUpper;
  set tempMaxUpper(int? tempMaxUpper) => _$this._tempMaxUpper = tempMaxUpper;

  int? _tempMaxLower;
  int? get tempMaxLower => _$this._tempMaxLower;
  set tempMaxLower(int? tempMaxLower) => _$this._tempMaxLower = tempMaxLower;

  double? _tempMaxNormal;
  double? get tempMaxNormal => _$this._tempMaxNormal;
  set tempMaxNormal(double? tempMaxNormal) =>
      _$this._tempMaxNormal = tempMaxNormal;

  GfetchForecastData_twoWeek_week2Builder() {
    GfetchForecastData_twoWeek_week2._initializeBuilder(this);
  }

  GfetchForecastData_twoWeek_week2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _tempMin = $v.tempMin;
      _tempMinUpper = $v.tempMinUpper;
      _tempMinLower = $v.tempMinLower;
      _tempMinNormal = $v.tempMinNormal;
      _tempMax = $v.tempMax;
      _tempMaxUpper = $v.tempMaxUpper;
      _tempMaxLower = $v.tempMaxLower;
      _tempMaxNormal = $v.tempMaxNormal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_twoWeek_week2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_twoWeek_week2;
  }

  @override
  void update(void Function(GfetchForecastData_twoWeek_week2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_twoWeek_week2 build() => _build();

  _$GfetchForecastData_twoWeek_week2 _build() {
    final _$result = _$v ??
        new _$GfetchForecastData_twoWeek_week2._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GfetchForecastData_twoWeek_week2', 'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'GfetchForecastData_twoWeek_week2', 'date'),
            tempMin: BuiltValueNullFieldError.checkNotNull(
                tempMin, r'GfetchForecastData_twoWeek_week2', 'tempMin'),
            tempMinUpper: BuiltValueNullFieldError.checkNotNull(
                tempMinUpper, r'GfetchForecastData_twoWeek_week2', 'tempMinUpper'),
            tempMinLower: BuiltValueNullFieldError.checkNotNull(
                tempMinLower, r'GfetchForecastData_twoWeek_week2', 'tempMinLower'),
            tempMinNormal: BuiltValueNullFieldError.checkNotNull(
                tempMinNormal, r'GfetchForecastData_twoWeek_week2', 'tempMinNormal'),
            tempMax: BuiltValueNullFieldError.checkNotNull(
                tempMax, r'GfetchForecastData_twoWeek_week2', 'tempMax'),
            tempMaxUpper:
                BuiltValueNullFieldError.checkNotNull(tempMaxUpper, r'GfetchForecastData_twoWeek_week2', 'tempMaxUpper'),
            tempMaxLower: BuiltValueNullFieldError.checkNotNull(tempMaxLower, r'GfetchForecastData_twoWeek_week2', 'tempMaxLower'),
            tempMaxNormal: BuiltValueNullFieldError.checkNotNull(tempMaxNormal, r'GfetchForecastData_twoWeek_week2', 'tempMaxNormal'));
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_month1 extends GfetchForecastData_month1 {
  @override
  final String G__typename;
  @override
  final String seasonAreaName;
  @override
  final String reportDatetime;
  @override
  final BuiltList<GfetchForecastData_month1_items> items;

  factory _$GfetchForecastData_month1(
          [void Function(GfetchForecastData_month1Builder)? updates]) =>
      (new GfetchForecastData_month1Builder()..update(updates))._build();

  _$GfetchForecastData_month1._(
      {required this.G__typename,
      required this.seasonAreaName,
      required this.reportDatetime,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_month1', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        seasonAreaName, r'GfetchForecastData_month1', 'seasonAreaName');
    BuiltValueNullFieldError.checkNotNull(
        reportDatetime, r'GfetchForecastData_month1', 'reportDatetime');
    BuiltValueNullFieldError.checkNotNull(
        items, r'GfetchForecastData_month1', 'items');
  }

  @override
  GfetchForecastData_month1 rebuild(
          void Function(GfetchForecastData_month1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_month1Builder toBuilder() =>
      new GfetchForecastData_month1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_month1 &&
        G__typename == other.G__typename &&
        seasonAreaName == other.seasonAreaName &&
        reportDatetime == other.reportDatetime &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), seasonAreaName.hashCode),
            reportDatetime.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_month1')
          ..add('G__typename', G__typename)
          ..add('seasonAreaName', seasonAreaName)
          ..add('reportDatetime', reportDatetime)
          ..add('items', items))
        .toString();
  }
}

class GfetchForecastData_month1Builder
    implements
        Builder<GfetchForecastData_month1, GfetchForecastData_month1Builder> {
  _$GfetchForecastData_month1? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _seasonAreaName;
  String? get seasonAreaName => _$this._seasonAreaName;
  set seasonAreaName(String? seasonAreaName) =>
      _$this._seasonAreaName = seasonAreaName;

  String? _reportDatetime;
  String? get reportDatetime => _$this._reportDatetime;
  set reportDatetime(String? reportDatetime) =>
      _$this._reportDatetime = reportDatetime;

  ListBuilder<GfetchForecastData_month1_items>? _items;
  ListBuilder<GfetchForecastData_month1_items> get items =>
      _$this._items ??= new ListBuilder<GfetchForecastData_month1_items>();
  set items(ListBuilder<GfetchForecastData_month1_items>? items) =>
      _$this._items = items;

  GfetchForecastData_month1Builder() {
    GfetchForecastData_month1._initializeBuilder(this);
  }

  GfetchForecastData_month1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _seasonAreaName = $v.seasonAreaName;
      _reportDatetime = $v.reportDatetime;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_month1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_month1;
  }

  @override
  void update(void Function(GfetchForecastData_month1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_month1 build() => _build();

  _$GfetchForecastData_month1 _build() {
    _$GfetchForecastData_month1 _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_month1._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchForecastData_month1', 'G__typename'),
              seasonAreaName: BuiltValueNullFieldError.checkNotNull(
                  seasonAreaName,
                  r'GfetchForecastData_month1',
                  'seasonAreaName'),
              reportDatetime: BuiltValueNullFieldError.checkNotNull(
                  reportDatetime,
                  r'GfetchForecastData_month1',
                  'reportDatetime'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_month1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_month1_items
    extends GfetchForecastData_month1_items {
  @override
  final String G__typename;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final BuiltList<String> temperature;

  factory _$GfetchForecastData_month1_items(
          [void Function(GfetchForecastData_month1_itemsBuilder)? updates]) =>
      (new GfetchForecastData_month1_itemsBuilder()..update(updates))._build();

  _$GfetchForecastData_month1_items._(
      {required this.G__typename,
      required this.fromDate,
      required this.toDate,
      required this.temperature})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_month1_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fromDate, r'GfetchForecastData_month1_items', 'fromDate');
    BuiltValueNullFieldError.checkNotNull(
        toDate, r'GfetchForecastData_month1_items', 'toDate');
    BuiltValueNullFieldError.checkNotNull(
        temperature, r'GfetchForecastData_month1_items', 'temperature');
  }

  @override
  GfetchForecastData_month1_items rebuild(
          void Function(GfetchForecastData_month1_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_month1_itemsBuilder toBuilder() =>
      new GfetchForecastData_month1_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_month1_items &&
        G__typename == other.G__typename &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        temperature == other.temperature;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), fromDate.hashCode),
            toDate.hashCode),
        temperature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_month1_items')
          ..add('G__typename', G__typename)
          ..add('fromDate', fromDate)
          ..add('toDate', toDate)
          ..add('temperature', temperature))
        .toString();
  }
}

class GfetchForecastData_month1_itemsBuilder
    implements
        Builder<GfetchForecastData_month1_items,
            GfetchForecastData_month1_itemsBuilder> {
  _$GfetchForecastData_month1_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  String? _toDate;
  String? get toDate => _$this._toDate;
  set toDate(String? toDate) => _$this._toDate = toDate;

  ListBuilder<String>? _temperature;
  ListBuilder<String> get temperature =>
      _$this._temperature ??= new ListBuilder<String>();
  set temperature(ListBuilder<String>? temperature) =>
      _$this._temperature = temperature;

  GfetchForecastData_month1_itemsBuilder() {
    GfetchForecastData_month1_items._initializeBuilder(this);
  }

  GfetchForecastData_month1_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fromDate = $v.fromDate;
      _toDate = $v.toDate;
      _temperature = $v.temperature.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_month1_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_month1_items;
  }

  @override
  void update(void Function(GfetchForecastData_month1_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_month1_items build() => _build();

  _$GfetchForecastData_month1_items _build() {
    _$GfetchForecastData_month1_items _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_month1_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GfetchForecastData_month1_items', 'G__typename'),
              fromDate: BuiltValueNullFieldError.checkNotNull(
                  fromDate, r'GfetchForecastData_month1_items', 'fromDate'),
              toDate: BuiltValueNullFieldError.checkNotNull(
                  toDate, r'GfetchForecastData_month1_items', 'toDate'),
              temperature: temperature.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'temperature';
        temperature.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_month1_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_month3 extends GfetchForecastData_month3 {
  @override
  final String G__typename;
  @override
  final String seasonAreaName;
  @override
  final String reportDatetime;
  @override
  final BuiltList<GfetchForecastData_month3_items> items;

  factory _$GfetchForecastData_month3(
          [void Function(GfetchForecastData_month3Builder)? updates]) =>
      (new GfetchForecastData_month3Builder()..update(updates))._build();

  _$GfetchForecastData_month3._(
      {required this.G__typename,
      required this.seasonAreaName,
      required this.reportDatetime,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_month3', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        seasonAreaName, r'GfetchForecastData_month3', 'seasonAreaName');
    BuiltValueNullFieldError.checkNotNull(
        reportDatetime, r'GfetchForecastData_month3', 'reportDatetime');
    BuiltValueNullFieldError.checkNotNull(
        items, r'GfetchForecastData_month3', 'items');
  }

  @override
  GfetchForecastData_month3 rebuild(
          void Function(GfetchForecastData_month3Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_month3Builder toBuilder() =>
      new GfetchForecastData_month3Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_month3 &&
        G__typename == other.G__typename &&
        seasonAreaName == other.seasonAreaName &&
        reportDatetime == other.reportDatetime &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), seasonAreaName.hashCode),
            reportDatetime.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_month3')
          ..add('G__typename', G__typename)
          ..add('seasonAreaName', seasonAreaName)
          ..add('reportDatetime', reportDatetime)
          ..add('items', items))
        .toString();
  }
}

class GfetchForecastData_month3Builder
    implements
        Builder<GfetchForecastData_month3, GfetchForecastData_month3Builder> {
  _$GfetchForecastData_month3? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _seasonAreaName;
  String? get seasonAreaName => _$this._seasonAreaName;
  set seasonAreaName(String? seasonAreaName) =>
      _$this._seasonAreaName = seasonAreaName;

  String? _reportDatetime;
  String? get reportDatetime => _$this._reportDatetime;
  set reportDatetime(String? reportDatetime) =>
      _$this._reportDatetime = reportDatetime;

  ListBuilder<GfetchForecastData_month3_items>? _items;
  ListBuilder<GfetchForecastData_month3_items> get items =>
      _$this._items ??= new ListBuilder<GfetchForecastData_month3_items>();
  set items(ListBuilder<GfetchForecastData_month3_items>? items) =>
      _$this._items = items;

  GfetchForecastData_month3Builder() {
    GfetchForecastData_month3._initializeBuilder(this);
  }

  GfetchForecastData_month3Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _seasonAreaName = $v.seasonAreaName;
      _reportDatetime = $v.reportDatetime;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_month3 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_month3;
  }

  @override
  void update(void Function(GfetchForecastData_month3Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_month3 build() => _build();

  _$GfetchForecastData_month3 _build() {
    _$GfetchForecastData_month3 _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_month3._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchForecastData_month3', 'G__typename'),
              seasonAreaName: BuiltValueNullFieldError.checkNotNull(
                  seasonAreaName,
                  r'GfetchForecastData_month3',
                  'seasonAreaName'),
              reportDatetime: BuiltValueNullFieldError.checkNotNull(
                  reportDatetime,
                  r'GfetchForecastData_month3',
                  'reportDatetime'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_month3', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_month3_items
    extends GfetchForecastData_month3_items {
  @override
  final String G__typename;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final BuiltList<String> temperature;

  factory _$GfetchForecastData_month3_items(
          [void Function(GfetchForecastData_month3_itemsBuilder)? updates]) =>
      (new GfetchForecastData_month3_itemsBuilder()..update(updates))._build();

  _$GfetchForecastData_month3_items._(
      {required this.G__typename,
      required this.fromDate,
      required this.toDate,
      required this.temperature})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_month3_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fromDate, r'GfetchForecastData_month3_items', 'fromDate');
    BuiltValueNullFieldError.checkNotNull(
        toDate, r'GfetchForecastData_month3_items', 'toDate');
    BuiltValueNullFieldError.checkNotNull(
        temperature, r'GfetchForecastData_month3_items', 'temperature');
  }

  @override
  GfetchForecastData_month3_items rebuild(
          void Function(GfetchForecastData_month3_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_month3_itemsBuilder toBuilder() =>
      new GfetchForecastData_month3_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_month3_items &&
        G__typename == other.G__typename &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        temperature == other.temperature;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), fromDate.hashCode),
            toDate.hashCode),
        temperature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_month3_items')
          ..add('G__typename', G__typename)
          ..add('fromDate', fromDate)
          ..add('toDate', toDate)
          ..add('temperature', temperature))
        .toString();
  }
}

class GfetchForecastData_month3_itemsBuilder
    implements
        Builder<GfetchForecastData_month3_items,
            GfetchForecastData_month3_itemsBuilder> {
  _$GfetchForecastData_month3_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  String? _toDate;
  String? get toDate => _$this._toDate;
  set toDate(String? toDate) => _$this._toDate = toDate;

  ListBuilder<String>? _temperature;
  ListBuilder<String> get temperature =>
      _$this._temperature ??= new ListBuilder<String>();
  set temperature(ListBuilder<String>? temperature) =>
      _$this._temperature = temperature;

  GfetchForecastData_month3_itemsBuilder() {
    GfetchForecastData_month3_items._initializeBuilder(this);
  }

  GfetchForecastData_month3_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fromDate = $v.fromDate;
      _toDate = $v.toDate;
      _temperature = $v.temperature.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_month3_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_month3_items;
  }

  @override
  void update(void Function(GfetchForecastData_month3_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_month3_items build() => _build();

  _$GfetchForecastData_month3_items _build() {
    _$GfetchForecastData_month3_items _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_month3_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GfetchForecastData_month3_items', 'G__typename'),
              fromDate: BuiltValueNullFieldError.checkNotNull(
                  fromDate, r'GfetchForecastData_month3_items', 'fromDate'),
              toDate: BuiltValueNullFieldError.checkNotNull(
                  toDate, r'GfetchForecastData_month3_items', 'toDate'),
              temperature: temperature.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'temperature';
        temperature.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_month3_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_month6 extends GfetchForecastData_month6 {
  @override
  final String G__typename;
  @override
  final String seasonAreaName;
  @override
  final String reportDatetime;
  @override
  final BuiltList<GfetchForecastData_month6_items> items;

  factory _$GfetchForecastData_month6(
          [void Function(GfetchForecastData_month6Builder)? updates]) =>
      (new GfetchForecastData_month6Builder()..update(updates))._build();

  _$GfetchForecastData_month6._(
      {required this.G__typename,
      required this.seasonAreaName,
      required this.reportDatetime,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_month6', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        seasonAreaName, r'GfetchForecastData_month6', 'seasonAreaName');
    BuiltValueNullFieldError.checkNotNull(
        reportDatetime, r'GfetchForecastData_month6', 'reportDatetime');
    BuiltValueNullFieldError.checkNotNull(
        items, r'GfetchForecastData_month6', 'items');
  }

  @override
  GfetchForecastData_month6 rebuild(
          void Function(GfetchForecastData_month6Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_month6Builder toBuilder() =>
      new GfetchForecastData_month6Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_month6 &&
        G__typename == other.G__typename &&
        seasonAreaName == other.seasonAreaName &&
        reportDatetime == other.reportDatetime &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), seasonAreaName.hashCode),
            reportDatetime.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_month6')
          ..add('G__typename', G__typename)
          ..add('seasonAreaName', seasonAreaName)
          ..add('reportDatetime', reportDatetime)
          ..add('items', items))
        .toString();
  }
}

class GfetchForecastData_month6Builder
    implements
        Builder<GfetchForecastData_month6, GfetchForecastData_month6Builder> {
  _$GfetchForecastData_month6? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _seasonAreaName;
  String? get seasonAreaName => _$this._seasonAreaName;
  set seasonAreaName(String? seasonAreaName) =>
      _$this._seasonAreaName = seasonAreaName;

  String? _reportDatetime;
  String? get reportDatetime => _$this._reportDatetime;
  set reportDatetime(String? reportDatetime) =>
      _$this._reportDatetime = reportDatetime;

  ListBuilder<GfetchForecastData_month6_items>? _items;
  ListBuilder<GfetchForecastData_month6_items> get items =>
      _$this._items ??= new ListBuilder<GfetchForecastData_month6_items>();
  set items(ListBuilder<GfetchForecastData_month6_items>? items) =>
      _$this._items = items;

  GfetchForecastData_month6Builder() {
    GfetchForecastData_month6._initializeBuilder(this);
  }

  GfetchForecastData_month6Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _seasonAreaName = $v.seasonAreaName;
      _reportDatetime = $v.reportDatetime;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_month6 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_month6;
  }

  @override
  void update(void Function(GfetchForecastData_month6Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_month6 build() => _build();

  _$GfetchForecastData_month6 _build() {
    _$GfetchForecastData_month6 _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_month6._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchForecastData_month6', 'G__typename'),
              seasonAreaName: BuiltValueNullFieldError.checkNotNull(
                  seasonAreaName,
                  r'GfetchForecastData_month6',
                  'seasonAreaName'),
              reportDatetime: BuiltValueNullFieldError.checkNotNull(
                  reportDatetime,
                  r'GfetchForecastData_month6',
                  'reportDatetime'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_month6', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchForecastData_month6_items
    extends GfetchForecastData_month6_items {
  @override
  final String G__typename;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final BuiltList<String> temperature;

  factory _$GfetchForecastData_month6_items(
          [void Function(GfetchForecastData_month6_itemsBuilder)? updates]) =>
      (new GfetchForecastData_month6_itemsBuilder()..update(updates))._build();

  _$GfetchForecastData_month6_items._(
      {required this.G__typename,
      required this.fromDate,
      required this.toDate,
      required this.temperature})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchForecastData_month6_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fromDate, r'GfetchForecastData_month6_items', 'fromDate');
    BuiltValueNullFieldError.checkNotNull(
        toDate, r'GfetchForecastData_month6_items', 'toDate');
    BuiltValueNullFieldError.checkNotNull(
        temperature, r'GfetchForecastData_month6_items', 'temperature');
  }

  @override
  GfetchForecastData_month6_items rebuild(
          void Function(GfetchForecastData_month6_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastData_month6_itemsBuilder toBuilder() =>
      new GfetchForecastData_month6_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastData_month6_items &&
        G__typename == other.G__typename &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        temperature == other.temperature;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), fromDate.hashCode),
            toDate.hashCode),
        temperature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastData_month6_items')
          ..add('G__typename', G__typename)
          ..add('fromDate', fromDate)
          ..add('toDate', toDate)
          ..add('temperature', temperature))
        .toString();
  }
}

class GfetchForecastData_month6_itemsBuilder
    implements
        Builder<GfetchForecastData_month6_items,
            GfetchForecastData_month6_itemsBuilder> {
  _$GfetchForecastData_month6_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  String? _toDate;
  String? get toDate => _$this._toDate;
  set toDate(String? toDate) => _$this._toDate = toDate;

  ListBuilder<String>? _temperature;
  ListBuilder<String> get temperature =>
      _$this._temperature ??= new ListBuilder<String>();
  set temperature(ListBuilder<String>? temperature) =>
      _$this._temperature = temperature;

  GfetchForecastData_month6_itemsBuilder() {
    GfetchForecastData_month6_items._initializeBuilder(this);
  }

  GfetchForecastData_month6_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fromDate = $v.fromDate;
      _toDate = $v.toDate;
      _temperature = $v.temperature.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastData_month6_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastData_month6_items;
  }

  @override
  void update(void Function(GfetchForecastData_month6_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastData_month6_items build() => _build();

  _$GfetchForecastData_month6_items _build() {
    _$GfetchForecastData_month6_items _$result;
    try {
      _$result = _$v ??
          new _$GfetchForecastData_month6_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GfetchForecastData_month6_items', 'G__typename'),
              fromDate: BuiltValueNullFieldError.checkNotNull(
                  fromDate, r'GfetchForecastData_month6_items', 'fromDate'),
              toDate: BuiltValueNullFieldError.checkNotNull(
                  toDate, r'GfetchForecastData_month6_items', 'toDate'),
              temperature: temperature.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'temperature';
        temperature.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchForecastData_month6_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
