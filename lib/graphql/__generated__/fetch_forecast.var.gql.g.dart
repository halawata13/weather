// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_forecast.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GfetchForecastVars> _$gfetchForecastVarsSerializer =
    new _$GfetchForecastVarsSerializer();

class _$GfetchForecastVarsSerializer
    implements StructuredSerializer<GfetchForecastVars> {
  @override
  final Iterable<Type> types = const [GfetchForecastVars, _$GfetchForecastVars];
  @override
  final String wireName = 'GfetchForecastVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchForecastVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'areaCode',
      serializers.serialize(object.areaCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GfetchForecastVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchForecastVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'areaCode':
          result.areaCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchForecastVars extends GfetchForecastVars {
  @override
  final String areaCode;

  factory _$GfetchForecastVars(
          [void Function(GfetchForecastVarsBuilder)? updates]) =>
      (new GfetchForecastVarsBuilder()..update(updates))._build();

  _$GfetchForecastVars._({required this.areaCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        areaCode, r'GfetchForecastVars', 'areaCode');
  }

  @override
  GfetchForecastVars rebuild(
          void Function(GfetchForecastVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchForecastVarsBuilder toBuilder() =>
      new GfetchForecastVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchForecastVars && areaCode == other.areaCode;
  }

  @override
  int get hashCode {
    return $jf($jc(0, areaCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchForecastVars')
          ..add('areaCode', areaCode))
        .toString();
  }
}

class GfetchForecastVarsBuilder
    implements Builder<GfetchForecastVars, GfetchForecastVarsBuilder> {
  _$GfetchForecastVars? _$v;

  String? _areaCode;
  String? get areaCode => _$this._areaCode;
  set areaCode(String? areaCode) => _$this._areaCode = areaCode;

  GfetchForecastVarsBuilder();

  GfetchForecastVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaCode = $v.areaCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchForecastVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchForecastVars;
  }

  @override
  void update(void Function(GfetchForecastVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchForecastVars build() => _build();

  _$GfetchForecastVars _build() {
    final _$result = _$v ??
        new _$GfetchForecastVars._(
            areaCode: BuiltValueNullFieldError.checkNotNull(
                areaCode, r'GfetchForecastVars', 'areaCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
