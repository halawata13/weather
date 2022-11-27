// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_amedas.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GamedasVars> _$gamedasVarsSerializer = new _$GamedasVarsSerializer();

class _$GamedasVarsSerializer implements StructuredSerializer<GamedasVars> {
  @override
  final Iterable<Type> types = const [GamedasVars, _$GamedasVars];
  @override
  final String wireName = 'GamedasVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GamedasVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'areaCode',
      serializers.serialize(object.areaCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GamedasVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GamedasVarsBuilder();

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

class _$GamedasVars extends GamedasVars {
  @override
  final String areaCode;

  factory _$GamedasVars([void Function(GamedasVarsBuilder)? updates]) =>
      (new GamedasVarsBuilder()..update(updates))._build();

  _$GamedasVars._({required this.areaCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(areaCode, r'GamedasVars', 'areaCode');
  }

  @override
  GamedasVars rebuild(void Function(GamedasVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GamedasVarsBuilder toBuilder() => new GamedasVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GamedasVars && areaCode == other.areaCode;
  }

  @override
  int get hashCode {
    return $jf($jc(0, areaCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GamedasVars')
          ..add('areaCode', areaCode))
        .toString();
  }
}

class GamedasVarsBuilder implements Builder<GamedasVars, GamedasVarsBuilder> {
  _$GamedasVars? _$v;

  String? _areaCode;
  String? get areaCode => _$this._areaCode;
  set areaCode(String? areaCode) => _$this._areaCode = areaCode;

  GamedasVarsBuilder();

  GamedasVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaCode = $v.areaCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamedasVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GamedasVars;
  }

  @override
  void update(void Function(GamedasVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GamedasVars build() => _build();

  _$GamedasVars _build() {
    final _$result = _$v ??
        new _$GamedasVars._(
            areaCode: BuiltValueNullFieldError.checkNotNull(
                areaCode, r'GamedasVars', 'areaCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
