// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_region_list.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GfetchRegionListVars> _$gfetchRegionListVarsSerializer =
    new _$GfetchRegionListVarsSerializer();

class _$GfetchRegionListVarsSerializer
    implements StructuredSerializer<GfetchRegionListVars> {
  @override
  final Iterable<Type> types = const [
    GfetchRegionListVars,
    _$GfetchRegionListVars
  ];
  @override
  final String wireName = 'GfetchRegionListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchRegionListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GfetchRegionListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GfetchRegionListVarsBuilder().build();
  }
}

class _$GfetchRegionListVars extends GfetchRegionListVars {
  factory _$GfetchRegionListVars(
          [void Function(GfetchRegionListVarsBuilder)? updates]) =>
      (new GfetchRegionListVarsBuilder()..update(updates))._build();

  _$GfetchRegionListVars._() : super._();

  @override
  GfetchRegionListVars rebuild(
          void Function(GfetchRegionListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchRegionListVarsBuilder toBuilder() =>
      new GfetchRegionListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchRegionListVars;
  }

  @override
  int get hashCode {
    return 571512206;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GfetchRegionListVars').toString();
  }
}

class GfetchRegionListVarsBuilder
    implements Builder<GfetchRegionListVars, GfetchRegionListVarsBuilder> {
  _$GfetchRegionListVars? _$v;

  GfetchRegionListVarsBuilder();

  @override
  void replace(GfetchRegionListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchRegionListVars;
  }

  @override
  void update(void Function(GfetchRegionListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchRegionListVars build() => _build();

  _$GfetchRegionListVars _build() {
    final _$result = _$v ?? new _$GfetchRegionListVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
