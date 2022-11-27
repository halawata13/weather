// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_amedas.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GamedasData> _$gamedasDataSerializer = new _$GamedasDataSerializer();
Serializer<GamedasData_amedas> _$gamedasDataAmedasSerializer =
    new _$GamedasData_amedasSerializer();

class _$GamedasDataSerializer implements StructuredSerializer<GamedasData> {
  @override
  final Iterable<Type> types = const [GamedasData, _$GamedasData];
  @override
  final String wireName = 'GamedasData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GamedasData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'amedas',
      serializers.serialize(object.amedas,
          specifiedType: const FullType(GamedasData_amedas)),
    ];

    return result;
  }

  @override
  GamedasData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GamedasDataBuilder();

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
        case 'amedas':
          result.amedas.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GamedasData_amedas))!
              as GamedasData_amedas);
          break;
      }
    }

    return result.build();
  }
}

class _$GamedasData_amedasSerializer
    implements StructuredSerializer<GamedasData_amedas> {
  @override
  final Iterable<Type> types = const [GamedasData_amedas, _$GamedasData_amedas];
  @override
  final String wireName = 'GamedasData_amedas';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GamedasData_amedas object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'reportDatetime',
      serializers.serialize(object.reportDatetime,
          specifiedType: const FullType(String)),
      'amedasCode',
      serializers.serialize(object.amedasCode,
          specifiedType: const FullType(String)),
      'amedasName',
      serializers.serialize(object.amedasName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pressure;
    if (value != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.normalPressure;
    if (value != null) {
      result
        ..add('normalPressure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.temp;
    if (value != null) {
      result
        ..add('temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.snow;
    if (value != null) {
      result
        ..add('snow')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.snow1h;
    if (value != null) {
      result
        ..add('snow1h')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.snow6h;
    if (value != null) {
      result
        ..add('snow6h')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.snow12h;
    if (value != null) {
      result
        ..add('snow12h')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.snow24h;
    if (value != null) {
      result
        ..add('snow24h')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sun10m;
    if (value != null) {
      result
        ..add('sun10m')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sun1h;
    if (value != null) {
      result
        ..add('sun1h')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precipitation10m;
    if (value != null) {
      result
        ..add('precipitation10m')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precipitation1h;
    if (value != null) {
      result
        ..add('precipitation1h')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precipitation3h;
    if (value != null) {
      result
        ..add('precipitation3h')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precipitation24h;
    if (value != null) {
      result
        ..add('precipitation24h')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windDirection;
    if (value != null) {
      result
        ..add('windDirection')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.wind;
    if (value != null) {
      result
        ..add('wind')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxTempTimeHour;
    if (value != null) {
      result
        ..add('maxTempTimeHour')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxTempTimeMinute;
    if (value != null) {
      result
        ..add('maxTempTimeMinute')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxTemp;
    if (value != null) {
      result
        ..add('maxTemp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.minTempTimeHour;
    if (value != null) {
      result
        ..add('minTempTimeHour')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minTempTimeMinute;
    if (value != null) {
      result
        ..add('minTempTimeMinute')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minTemp;
    if (value != null) {
      result
        ..add('minTemp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.gustTimeHour;
    if (value != null) {
      result
        ..add('gustTimeHour')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gustTimeMinute;
    if (value != null) {
      result
        ..add('gustTimeMinute')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gustDirection;
    if (value != null) {
      result
        ..add('gustDirection')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gust;
    if (value != null) {
      result
        ..add('gust')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GamedasData_amedas deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GamedasData_amedasBuilder();

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
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'normalPressure':
          result.normalPressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'snow':
          result.snow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'snow1h':
          result.snow1h = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'snow6h':
          result.snow6h = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'snow12h':
          result.snow12h = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'snow24h':
          result.snow24h = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sun10m':
          result.sun10m = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sun1h':
          result.sun1h = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precipitation10m':
          result.precipitation10m = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precipitation1h':
          result.precipitation1h = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precipitation3h':
          result.precipitation3h = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precipitation24h':
          result.precipitation24h = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'windDirection':
          result.windDirection = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'wind':
          result.wind = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'maxTempTimeHour':
          result.maxTempTimeHour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxTempTimeMinute':
          result.maxTempTimeMinute = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxTemp':
          result.maxTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'minTempTimeHour':
          result.minTempTimeHour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minTempTimeMinute':
          result.minTempTimeMinute = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minTemp':
          result.minTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'gustTimeHour':
          result.gustTimeHour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gustTimeMinute':
          result.gustTimeMinute = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gustDirection':
          result.gustDirection = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gust':
          result.gust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'reportDatetime':
          result.reportDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amedasCode':
          result.amedasCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amedasName':
          result.amedasName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GamedasData extends GamedasData {
  @override
  final String G__typename;
  @override
  final GamedasData_amedas amedas;

  factory _$GamedasData([void Function(GamedasDataBuilder)? updates]) =>
      (new GamedasDataBuilder()..update(updates))._build();

  _$GamedasData._({required this.G__typename, required this.amedas})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GamedasData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(amedas, r'GamedasData', 'amedas');
  }

  @override
  GamedasData rebuild(void Function(GamedasDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GamedasDataBuilder toBuilder() => new GamedasDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GamedasData &&
        G__typename == other.G__typename &&
        amedas == other.amedas;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), amedas.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GamedasData')
          ..add('G__typename', G__typename)
          ..add('amedas', amedas))
        .toString();
  }
}

class GamedasDataBuilder implements Builder<GamedasData, GamedasDataBuilder> {
  _$GamedasData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GamedasData_amedasBuilder? _amedas;
  GamedasData_amedasBuilder get amedas =>
      _$this._amedas ??= new GamedasData_amedasBuilder();
  set amedas(GamedasData_amedasBuilder? amedas) => _$this._amedas = amedas;

  GamedasDataBuilder() {
    GamedasData._initializeBuilder(this);
  }

  GamedasDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _amedas = $v.amedas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamedasData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GamedasData;
  }

  @override
  void update(void Function(GamedasDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GamedasData build() => _build();

  _$GamedasData _build() {
    _$GamedasData _$result;
    try {
      _$result = _$v ??
          new _$GamedasData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GamedasData', 'G__typename'),
              amedas: amedas.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'amedas';
        amedas.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GamedasData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GamedasData_amedas extends GamedasData_amedas {
  @override
  final String G__typename;
  @override
  final double? pressure;
  @override
  final double? normalPressure;
  @override
  final double? temp;
  @override
  final int? humidity;
  @override
  final int? snow;
  @override
  final int? snow1h;
  @override
  final int? snow6h;
  @override
  final int? snow12h;
  @override
  final int? snow24h;
  @override
  final int? sun10m;
  @override
  final double? sun1h;
  @override
  final double? precipitation10m;
  @override
  final double? precipitation1h;
  @override
  final double? precipitation3h;
  @override
  final double? precipitation24h;
  @override
  final int? windDirection;
  @override
  final double? wind;
  @override
  final int? maxTempTimeHour;
  @override
  final int? maxTempTimeMinute;
  @override
  final double? maxTemp;
  @override
  final int? minTempTimeHour;
  @override
  final int? minTempTimeMinute;
  @override
  final double? minTemp;
  @override
  final int? gustTimeHour;
  @override
  final int? gustTimeMinute;
  @override
  final int? gustDirection;
  @override
  final double? gust;
  @override
  final String reportDatetime;
  @override
  final String amedasCode;
  @override
  final String amedasName;

  factory _$GamedasData_amedas(
          [void Function(GamedasData_amedasBuilder)? updates]) =>
      (new GamedasData_amedasBuilder()..update(updates))._build();

  _$GamedasData_amedas._(
      {required this.G__typename,
      this.pressure,
      this.normalPressure,
      this.temp,
      this.humidity,
      this.snow,
      this.snow1h,
      this.snow6h,
      this.snow12h,
      this.snow24h,
      this.sun10m,
      this.sun1h,
      this.precipitation10m,
      this.precipitation1h,
      this.precipitation3h,
      this.precipitation24h,
      this.windDirection,
      this.wind,
      this.maxTempTimeHour,
      this.maxTempTimeMinute,
      this.maxTemp,
      this.minTempTimeHour,
      this.minTempTimeMinute,
      this.minTemp,
      this.gustTimeHour,
      this.gustTimeMinute,
      this.gustDirection,
      this.gust,
      required this.reportDatetime,
      required this.amedasCode,
      required this.amedasName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GamedasData_amedas', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        reportDatetime, r'GamedasData_amedas', 'reportDatetime');
    BuiltValueNullFieldError.checkNotNull(
        amedasCode, r'GamedasData_amedas', 'amedasCode');
    BuiltValueNullFieldError.checkNotNull(
        amedasName, r'GamedasData_amedas', 'amedasName');
  }

  @override
  GamedasData_amedas rebuild(
          void Function(GamedasData_amedasBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GamedasData_amedasBuilder toBuilder() =>
      new GamedasData_amedasBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GamedasData_amedas &&
        G__typename == other.G__typename &&
        pressure == other.pressure &&
        normalPressure == other.normalPressure &&
        temp == other.temp &&
        humidity == other.humidity &&
        snow == other.snow &&
        snow1h == other.snow1h &&
        snow6h == other.snow6h &&
        snow12h == other.snow12h &&
        snow24h == other.snow24h &&
        sun10m == other.sun10m &&
        sun1h == other.sun1h &&
        precipitation10m == other.precipitation10m &&
        precipitation1h == other.precipitation1h &&
        precipitation3h == other.precipitation3h &&
        precipitation24h == other.precipitation24h &&
        windDirection == other.windDirection &&
        wind == other.wind &&
        maxTempTimeHour == other.maxTempTimeHour &&
        maxTempTimeMinute == other.maxTempTimeMinute &&
        maxTemp == other.maxTemp &&
        minTempTimeHour == other.minTempTimeHour &&
        minTempTimeMinute == other.minTempTimeMinute &&
        minTemp == other.minTemp &&
        gustTimeHour == other.gustTimeHour &&
        gustTimeMinute == other.gustTimeMinute &&
        gustDirection == other.gustDirection &&
        gust == other.gust &&
        reportDatetime == other.reportDatetime &&
        amedasCode == other.amedasCode &&
        amedasName == other.amedasName;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, G__typename.hashCode), pressure.hashCode), normalPressure.hashCode), temp.hashCode), humidity.hashCode), snow.hashCode), snow1h.hashCode), snow6h.hashCode), snow12h.hashCode), snow24h.hashCode), sun10m.hashCode), sun1h.hashCode),
                                                                                precipitation10m.hashCode),
                                                                            precipitation1h.hashCode),
                                                                        precipitation3h.hashCode),
                                                                    precipitation24h.hashCode),
                                                                windDirection.hashCode),
                                                            wind.hashCode),
                                                        maxTempTimeHour.hashCode),
                                                    maxTempTimeMinute.hashCode),
                                                maxTemp.hashCode),
                                            minTempTimeHour.hashCode),
                                        minTempTimeMinute.hashCode),
                                    minTemp.hashCode),
                                gustTimeHour.hashCode),
                            gustTimeMinute.hashCode),
                        gustDirection.hashCode),
                    gust.hashCode),
                reportDatetime.hashCode),
            amedasCode.hashCode),
        amedasName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GamedasData_amedas')
          ..add('G__typename', G__typename)
          ..add('pressure', pressure)
          ..add('normalPressure', normalPressure)
          ..add('temp', temp)
          ..add('humidity', humidity)
          ..add('snow', snow)
          ..add('snow1h', snow1h)
          ..add('snow6h', snow6h)
          ..add('snow12h', snow12h)
          ..add('snow24h', snow24h)
          ..add('sun10m', sun10m)
          ..add('sun1h', sun1h)
          ..add('precipitation10m', precipitation10m)
          ..add('precipitation1h', precipitation1h)
          ..add('precipitation3h', precipitation3h)
          ..add('precipitation24h', precipitation24h)
          ..add('windDirection', windDirection)
          ..add('wind', wind)
          ..add('maxTempTimeHour', maxTempTimeHour)
          ..add('maxTempTimeMinute', maxTempTimeMinute)
          ..add('maxTemp', maxTemp)
          ..add('minTempTimeHour', minTempTimeHour)
          ..add('minTempTimeMinute', minTempTimeMinute)
          ..add('minTemp', minTemp)
          ..add('gustTimeHour', gustTimeHour)
          ..add('gustTimeMinute', gustTimeMinute)
          ..add('gustDirection', gustDirection)
          ..add('gust', gust)
          ..add('reportDatetime', reportDatetime)
          ..add('amedasCode', amedasCode)
          ..add('amedasName', amedasName))
        .toString();
  }
}

class GamedasData_amedasBuilder
    implements Builder<GamedasData_amedas, GamedasData_amedasBuilder> {
  _$GamedasData_amedas? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _pressure;
  double? get pressure => _$this._pressure;
  set pressure(double? pressure) => _$this._pressure = pressure;

  double? _normalPressure;
  double? get normalPressure => _$this._normalPressure;
  set normalPressure(double? normalPressure) =>
      _$this._normalPressure = normalPressure;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  int? _snow;
  int? get snow => _$this._snow;
  set snow(int? snow) => _$this._snow = snow;

  int? _snow1h;
  int? get snow1h => _$this._snow1h;
  set snow1h(int? snow1h) => _$this._snow1h = snow1h;

  int? _snow6h;
  int? get snow6h => _$this._snow6h;
  set snow6h(int? snow6h) => _$this._snow6h = snow6h;

  int? _snow12h;
  int? get snow12h => _$this._snow12h;
  set snow12h(int? snow12h) => _$this._snow12h = snow12h;

  int? _snow24h;
  int? get snow24h => _$this._snow24h;
  set snow24h(int? snow24h) => _$this._snow24h = snow24h;

  int? _sun10m;
  int? get sun10m => _$this._sun10m;
  set sun10m(int? sun10m) => _$this._sun10m = sun10m;

  double? _sun1h;
  double? get sun1h => _$this._sun1h;
  set sun1h(double? sun1h) => _$this._sun1h = sun1h;

  double? _precipitation10m;
  double? get precipitation10m => _$this._precipitation10m;
  set precipitation10m(double? precipitation10m) =>
      _$this._precipitation10m = precipitation10m;

  double? _precipitation1h;
  double? get precipitation1h => _$this._precipitation1h;
  set precipitation1h(double? precipitation1h) =>
      _$this._precipitation1h = precipitation1h;

  double? _precipitation3h;
  double? get precipitation3h => _$this._precipitation3h;
  set precipitation3h(double? precipitation3h) =>
      _$this._precipitation3h = precipitation3h;

  double? _precipitation24h;
  double? get precipitation24h => _$this._precipitation24h;
  set precipitation24h(double? precipitation24h) =>
      _$this._precipitation24h = precipitation24h;

  int? _windDirection;
  int? get windDirection => _$this._windDirection;
  set windDirection(int? windDirection) =>
      _$this._windDirection = windDirection;

  double? _wind;
  double? get wind => _$this._wind;
  set wind(double? wind) => _$this._wind = wind;

  int? _maxTempTimeHour;
  int? get maxTempTimeHour => _$this._maxTempTimeHour;
  set maxTempTimeHour(int? maxTempTimeHour) =>
      _$this._maxTempTimeHour = maxTempTimeHour;

  int? _maxTempTimeMinute;
  int? get maxTempTimeMinute => _$this._maxTempTimeMinute;
  set maxTempTimeMinute(int? maxTempTimeMinute) =>
      _$this._maxTempTimeMinute = maxTempTimeMinute;

  double? _maxTemp;
  double? get maxTemp => _$this._maxTemp;
  set maxTemp(double? maxTemp) => _$this._maxTemp = maxTemp;

  int? _minTempTimeHour;
  int? get minTempTimeHour => _$this._minTempTimeHour;
  set minTempTimeHour(int? minTempTimeHour) =>
      _$this._minTempTimeHour = minTempTimeHour;

  int? _minTempTimeMinute;
  int? get minTempTimeMinute => _$this._minTempTimeMinute;
  set minTempTimeMinute(int? minTempTimeMinute) =>
      _$this._minTempTimeMinute = minTempTimeMinute;

  double? _minTemp;
  double? get minTemp => _$this._minTemp;
  set minTemp(double? minTemp) => _$this._minTemp = minTemp;

  int? _gustTimeHour;
  int? get gustTimeHour => _$this._gustTimeHour;
  set gustTimeHour(int? gustTimeHour) => _$this._gustTimeHour = gustTimeHour;

  int? _gustTimeMinute;
  int? get gustTimeMinute => _$this._gustTimeMinute;
  set gustTimeMinute(int? gustTimeMinute) =>
      _$this._gustTimeMinute = gustTimeMinute;

  int? _gustDirection;
  int? get gustDirection => _$this._gustDirection;
  set gustDirection(int? gustDirection) =>
      _$this._gustDirection = gustDirection;

  double? _gust;
  double? get gust => _$this._gust;
  set gust(double? gust) => _$this._gust = gust;

  String? _reportDatetime;
  String? get reportDatetime => _$this._reportDatetime;
  set reportDatetime(String? reportDatetime) =>
      _$this._reportDatetime = reportDatetime;

  String? _amedasCode;
  String? get amedasCode => _$this._amedasCode;
  set amedasCode(String? amedasCode) => _$this._amedasCode = amedasCode;

  String? _amedasName;
  String? get amedasName => _$this._amedasName;
  set amedasName(String? amedasName) => _$this._amedasName = amedasName;

  GamedasData_amedasBuilder() {
    GamedasData_amedas._initializeBuilder(this);
  }

  GamedasData_amedasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pressure = $v.pressure;
      _normalPressure = $v.normalPressure;
      _temp = $v.temp;
      _humidity = $v.humidity;
      _snow = $v.snow;
      _snow1h = $v.snow1h;
      _snow6h = $v.snow6h;
      _snow12h = $v.snow12h;
      _snow24h = $v.snow24h;
      _sun10m = $v.sun10m;
      _sun1h = $v.sun1h;
      _precipitation10m = $v.precipitation10m;
      _precipitation1h = $v.precipitation1h;
      _precipitation3h = $v.precipitation3h;
      _precipitation24h = $v.precipitation24h;
      _windDirection = $v.windDirection;
      _wind = $v.wind;
      _maxTempTimeHour = $v.maxTempTimeHour;
      _maxTempTimeMinute = $v.maxTempTimeMinute;
      _maxTemp = $v.maxTemp;
      _minTempTimeHour = $v.minTempTimeHour;
      _minTempTimeMinute = $v.minTempTimeMinute;
      _minTemp = $v.minTemp;
      _gustTimeHour = $v.gustTimeHour;
      _gustTimeMinute = $v.gustTimeMinute;
      _gustDirection = $v.gustDirection;
      _gust = $v.gust;
      _reportDatetime = $v.reportDatetime;
      _amedasCode = $v.amedasCode;
      _amedasName = $v.amedasName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamedasData_amedas other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GamedasData_amedas;
  }

  @override
  void update(void Function(GamedasData_amedasBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GamedasData_amedas build() => _build();

  _$GamedasData_amedas _build() {
    final _$result = _$v ??
        new _$GamedasData_amedas._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GamedasData_amedas', 'G__typename'),
            pressure: pressure,
            normalPressure: normalPressure,
            temp: temp,
            humidity: humidity,
            snow: snow,
            snow1h: snow1h,
            snow6h: snow6h,
            snow12h: snow12h,
            snow24h: snow24h,
            sun10m: sun10m,
            sun1h: sun1h,
            precipitation10m: precipitation10m,
            precipitation1h: precipitation1h,
            precipitation3h: precipitation3h,
            precipitation24h: precipitation24h,
            windDirection: windDirection,
            wind: wind,
            maxTempTimeHour: maxTempTimeHour,
            maxTempTimeMinute: maxTempTimeMinute,
            maxTemp: maxTemp,
            minTempTimeHour: minTempTimeHour,
            minTempTimeMinute: minTempTimeMinute,
            minTemp: minTemp,
            gustTimeHour: gustTimeHour,
            gustTimeMinute: gustTimeMinute,
            gustDirection: gustDirection,
            gust: gust,
            reportDatetime: BuiltValueNullFieldError.checkNotNull(
                reportDatetime, r'GamedasData_amedas', 'reportDatetime'),
            amedasCode: BuiltValueNullFieldError.checkNotNull(
                amedasCode, r'GamedasData_amedas', 'amedasCode'),
            amedasName: BuiltValueNullFieldError.checkNotNull(
                amedasName, r'GamedasData_amedas', 'amedasName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
