// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_region_list.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GfetchRegionListData> _$gfetchRegionListDataSerializer =
    new _$GfetchRegionListDataSerializer();
Serializer<GfetchRegionListData_regionList>
    _$gfetchRegionListDataRegionListSerializer =
    new _$GfetchRegionListData_regionListSerializer();
Serializer<GfetchRegionListData_regionList_regionItems>
    _$gfetchRegionListDataRegionListRegionItemsSerializer =
    new _$GfetchRegionListData_regionList_regionItemsSerializer();
Serializer<GfetchRegionListData_regionList_regionItems_prefItems>
    _$gfetchRegionListDataRegionListRegionItemsPrefItemsSerializer =
    new _$GfetchRegionListData_regionList_regionItems_prefItemsSerializer();
Serializer<GfetchRegionListData_regionList_regionItems_prefItems_areaItems>
    _$gfetchRegionListDataRegionListRegionItemsPrefItemsAreaItemsSerializer =
    new _$GfetchRegionListData_regionList_regionItems_prefItems_areaItemsSerializer();

class _$GfetchRegionListDataSerializer
    implements StructuredSerializer<GfetchRegionListData> {
  @override
  final Iterable<Type> types = const [
    GfetchRegionListData,
    _$GfetchRegionListData
  ];
  @override
  final String wireName = 'GfetchRegionListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchRegionListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'regionList',
      serializers.serialize(object.regionList,
          specifiedType: const FullType(GfetchRegionListData_regionList)),
    ];

    return result;
  }

  @override
  GfetchRegionListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchRegionListDataBuilder();

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
        case 'regionList':
          result.regionList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GfetchRegionListData_regionList))!
              as GfetchRegionListData_regionList);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchRegionListData_regionListSerializer
    implements StructuredSerializer<GfetchRegionListData_regionList> {
  @override
  final Iterable<Type> types = const [
    GfetchRegionListData_regionList,
    _$GfetchRegionListData_regionList
  ];
  @override
  final String wireName = 'GfetchRegionListData_regionList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchRegionListData_regionList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'regionItems',
      serializers.serialize(object.regionItems,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GfetchRegionListData_regionList_regionItems)
          ])),
    ];

    return result;
  }

  @override
  GfetchRegionListData_regionList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchRegionListData_regionListBuilder();

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
        case 'regionItems':
          result.regionItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchRegionListData_regionList_regionItems)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchRegionListData_regionList_regionItemsSerializer
    implements
        StructuredSerializer<GfetchRegionListData_regionList_regionItems> {
  @override
  final Iterable<Type> types = const [
    GfetchRegionListData_regionList_regionItems,
    _$GfetchRegionListData_regionList_regionItems
  ];
  @override
  final String wireName = 'GfetchRegionListData_regionList_regionItems';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GfetchRegionListData_regionList_regionItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'regionName',
      serializers.serialize(object.regionName,
          specifiedType: const FullType(String)),
      'regionCode',
      serializers.serialize(object.regionCode,
          specifiedType: const FullType(String)),
      'prefItems',
      serializers.serialize(object.prefItems,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GfetchRegionListData_regionList_regionItems_prefItems)
          ])),
    ];

    return result;
  }

  @override
  GfetchRegionListData_regionList_regionItems deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchRegionListData_regionList_regionItemsBuilder();

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
        case 'regionName':
          result.regionName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'regionCode':
          result.regionCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'prefItems':
          result.prefItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GfetchRegionListData_regionList_regionItems_prefItems)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchRegionListData_regionList_regionItems_prefItemsSerializer
    implements
        StructuredSerializer<
            GfetchRegionListData_regionList_regionItems_prefItems> {
  @override
  final Iterable<Type> types = const [
    GfetchRegionListData_regionList_regionItems_prefItems,
    _$GfetchRegionListData_regionList_regionItems_prefItems
  ];
  @override
  final String wireName =
      'GfetchRegionListData_regionList_regionItems_prefItems';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GfetchRegionListData_regionList_regionItems_prefItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'prefName',
      serializers.serialize(object.prefName,
          specifiedType: const FullType(String)),
      'prefCode',
      serializers.serialize(object.prefCode,
          specifiedType: const FullType(String)),
      'areaItems',
      serializers.serialize(object.areaItems,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GfetchRegionListData_regionList_regionItems_prefItems_areaItems)
          ])),
    ];

    return result;
  }

  @override
  GfetchRegionListData_regionList_regionItems_prefItems deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GfetchRegionListData_regionList_regionItems_prefItemsBuilder();

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
        case 'prefName':
          result.prefName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'prefCode':
          result.prefCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'areaItems':
          result.areaItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GfetchRegionListData_regionList_regionItems_prefItems_areaItems)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchRegionListData_regionList_regionItems_prefItems_areaItemsSerializer
    implements
        StructuredSerializer<
            GfetchRegionListData_regionList_regionItems_prefItems_areaItems> {
  @override
  final Iterable<Type> types = const [
    GfetchRegionListData_regionList_regionItems_prefItems_areaItems,
    _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems
  ];
  @override
  final String wireName =
      'GfetchRegionListData_regionList_regionItems_prefItems_areaItems';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GfetchRegionListData_regionList_regionItems_prefItems_areaItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'regionName',
      serializers.serialize(object.regionName,
          specifiedType: const FullType(String)),
      'prefName',
      serializers.serialize(object.prefName,
          specifiedType: const FullType(String)),
      'areaName',
      serializers.serialize(object.areaName,
          specifiedType: const FullType(String)),
      'areaCode',
      serializers.serialize(object.areaCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GfetchRegionListData_regionList_regionItems_prefItems_areaItems deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder();

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
        case 'regionName':
          result.regionName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'prefName':
          result.prefName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'areaName':
          result.areaName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'areaCode':
          result.areaCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchRegionListData extends GfetchRegionListData {
  @override
  final String G__typename;
  @override
  final GfetchRegionListData_regionList regionList;

  factory _$GfetchRegionListData(
          [void Function(GfetchRegionListDataBuilder)? updates]) =>
      (new GfetchRegionListDataBuilder()..update(updates))._build();

  _$GfetchRegionListData._(
      {required this.G__typename, required this.regionList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchRegionListData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        regionList, r'GfetchRegionListData', 'regionList');
  }

  @override
  GfetchRegionListData rebuild(
          void Function(GfetchRegionListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchRegionListDataBuilder toBuilder() =>
      new GfetchRegionListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchRegionListData &&
        G__typename == other.G__typename &&
        regionList == other.regionList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), regionList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchRegionListData')
          ..add('G__typename', G__typename)
          ..add('regionList', regionList))
        .toString();
  }
}

class GfetchRegionListDataBuilder
    implements Builder<GfetchRegionListData, GfetchRegionListDataBuilder> {
  _$GfetchRegionListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GfetchRegionListData_regionListBuilder? _regionList;
  GfetchRegionListData_regionListBuilder get regionList =>
      _$this._regionList ??= new GfetchRegionListData_regionListBuilder();
  set regionList(GfetchRegionListData_regionListBuilder? regionList) =>
      _$this._regionList = regionList;

  GfetchRegionListDataBuilder() {
    GfetchRegionListData._initializeBuilder(this);
  }

  GfetchRegionListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _regionList = $v.regionList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchRegionListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchRegionListData;
  }

  @override
  void update(void Function(GfetchRegionListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchRegionListData build() => _build();

  _$GfetchRegionListData _build() {
    _$GfetchRegionListData _$result;
    try {
      _$result = _$v ??
          new _$GfetchRegionListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GfetchRegionListData', 'G__typename'),
              regionList: regionList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionList';
        regionList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchRegionListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchRegionListData_regionList
    extends GfetchRegionListData_regionList {
  @override
  final String G__typename;
  @override
  final BuiltList<GfetchRegionListData_regionList_regionItems> regionItems;

  factory _$GfetchRegionListData_regionList(
          [void Function(GfetchRegionListData_regionListBuilder)? updates]) =>
      (new GfetchRegionListData_regionListBuilder()..update(updates))._build();

  _$GfetchRegionListData_regionList._(
      {required this.G__typename, required this.regionItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GfetchRegionListData_regionList', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        regionItems, r'GfetchRegionListData_regionList', 'regionItems');
  }

  @override
  GfetchRegionListData_regionList rebuild(
          void Function(GfetchRegionListData_regionListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchRegionListData_regionListBuilder toBuilder() =>
      new GfetchRegionListData_regionListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchRegionListData_regionList &&
        G__typename == other.G__typename &&
        regionItems == other.regionItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), regionItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GfetchRegionListData_regionList')
          ..add('G__typename', G__typename)
          ..add('regionItems', regionItems))
        .toString();
  }
}

class GfetchRegionListData_regionListBuilder
    implements
        Builder<GfetchRegionListData_regionList,
            GfetchRegionListData_regionListBuilder> {
  _$GfetchRegionListData_regionList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GfetchRegionListData_regionList_regionItems>? _regionItems;
  ListBuilder<GfetchRegionListData_regionList_regionItems> get regionItems =>
      _$this._regionItems ??=
          new ListBuilder<GfetchRegionListData_regionList_regionItems>();
  set regionItems(
          ListBuilder<GfetchRegionListData_regionList_regionItems>?
              regionItems) =>
      _$this._regionItems = regionItems;

  GfetchRegionListData_regionListBuilder() {
    GfetchRegionListData_regionList._initializeBuilder(this);
  }

  GfetchRegionListData_regionListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _regionItems = $v.regionItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchRegionListData_regionList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchRegionListData_regionList;
  }

  @override
  void update(void Function(GfetchRegionListData_regionListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchRegionListData_regionList build() => _build();

  _$GfetchRegionListData_regionList _build() {
    _$GfetchRegionListData_regionList _$result;
    try {
      _$result = _$v ??
          new _$GfetchRegionListData_regionList._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GfetchRegionListData_regionList', 'G__typename'),
              regionItems: regionItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionItems';
        regionItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchRegionListData_regionList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchRegionListData_regionList_regionItems
    extends GfetchRegionListData_regionList_regionItems {
  @override
  final String G__typename;
  @override
  final String regionName;
  @override
  final String regionCode;
  @override
  final BuiltList<GfetchRegionListData_regionList_regionItems_prefItems>
      prefItems;

  factory _$GfetchRegionListData_regionList_regionItems(
          [void Function(GfetchRegionListData_regionList_regionItemsBuilder)?
              updates]) =>
      (new GfetchRegionListData_regionList_regionItemsBuilder()
            ..update(updates))
          ._build();

  _$GfetchRegionListData_regionList_regionItems._(
      {required this.G__typename,
      required this.regionName,
      required this.regionCode,
      required this.prefItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GfetchRegionListData_regionList_regionItems', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(regionName,
        r'GfetchRegionListData_regionList_regionItems', 'regionName');
    BuiltValueNullFieldError.checkNotNull(regionCode,
        r'GfetchRegionListData_regionList_regionItems', 'regionCode');
    BuiltValueNullFieldError.checkNotNull(
        prefItems, r'GfetchRegionListData_regionList_regionItems', 'prefItems');
  }

  @override
  GfetchRegionListData_regionList_regionItems rebuild(
          void Function(GfetchRegionListData_regionList_regionItemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchRegionListData_regionList_regionItemsBuilder toBuilder() =>
      new GfetchRegionListData_regionList_regionItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchRegionListData_regionList_regionItems &&
        G__typename == other.G__typename &&
        regionName == other.regionName &&
        regionCode == other.regionCode &&
        prefItems == other.prefItems;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), regionName.hashCode),
            regionCode.hashCode),
        prefItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GfetchRegionListData_regionList_regionItems')
          ..add('G__typename', G__typename)
          ..add('regionName', regionName)
          ..add('regionCode', regionCode)
          ..add('prefItems', prefItems))
        .toString();
  }
}

class GfetchRegionListData_regionList_regionItemsBuilder
    implements
        Builder<GfetchRegionListData_regionList_regionItems,
            GfetchRegionListData_regionList_regionItemsBuilder> {
  _$GfetchRegionListData_regionList_regionItems? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  ListBuilder<GfetchRegionListData_regionList_regionItems_prefItems>?
      _prefItems;
  ListBuilder<GfetchRegionListData_regionList_regionItems_prefItems>
      get prefItems => _$this._prefItems ??= new ListBuilder<
          GfetchRegionListData_regionList_regionItems_prefItems>();
  set prefItems(
          ListBuilder<GfetchRegionListData_regionList_regionItems_prefItems>?
              prefItems) =>
      _$this._prefItems = prefItems;

  GfetchRegionListData_regionList_regionItemsBuilder() {
    GfetchRegionListData_regionList_regionItems._initializeBuilder(this);
  }

  GfetchRegionListData_regionList_regionItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _regionName = $v.regionName;
      _regionCode = $v.regionCode;
      _prefItems = $v.prefItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchRegionListData_regionList_regionItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchRegionListData_regionList_regionItems;
  }

  @override
  void update(
      void Function(GfetchRegionListData_regionList_regionItemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchRegionListData_regionList_regionItems build() => _build();

  _$GfetchRegionListData_regionList_regionItems _build() {
    _$GfetchRegionListData_regionList_regionItems _$result;
    try {
      _$result = _$v ??
          new _$GfetchRegionListData_regionList_regionItems._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GfetchRegionListData_regionList_regionItems',
                  'G__typename'),
              regionName: BuiltValueNullFieldError.checkNotNull(regionName,
                  r'GfetchRegionListData_regionList_regionItems', 'regionName'),
              regionCode: BuiltValueNullFieldError.checkNotNull(regionCode,
                  r'GfetchRegionListData_regionList_regionItems', 'regionCode'),
              prefItems: prefItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefItems';
        prefItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchRegionListData_regionList_regionItems',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchRegionListData_regionList_regionItems_prefItems
    extends GfetchRegionListData_regionList_regionItems_prefItems {
  @override
  final String G__typename;
  @override
  final String prefName;
  @override
  final String prefCode;
  @override
  final BuiltList<
          GfetchRegionListData_regionList_regionItems_prefItems_areaItems>
      areaItems;

  factory _$GfetchRegionListData_regionList_regionItems_prefItems(
          [void Function(
                  GfetchRegionListData_regionList_regionItems_prefItemsBuilder)?
              updates]) =>
      (new GfetchRegionListData_regionList_regionItems_prefItemsBuilder()
            ..update(updates))
          ._build();

  _$GfetchRegionListData_regionList_regionItems_prefItems._(
      {required this.G__typename,
      required this.prefName,
      required this.prefCode,
      required this.areaItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GfetchRegionListData_regionList_regionItems_prefItems',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(prefName,
        r'GfetchRegionListData_regionList_regionItems_prefItems', 'prefName');
    BuiltValueNullFieldError.checkNotNull(prefCode,
        r'GfetchRegionListData_regionList_regionItems_prefItems', 'prefCode');
    BuiltValueNullFieldError.checkNotNull(areaItems,
        r'GfetchRegionListData_regionList_regionItems_prefItems', 'areaItems');
  }

  @override
  GfetchRegionListData_regionList_regionItems_prefItems rebuild(
          void Function(
                  GfetchRegionListData_regionList_regionItems_prefItemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchRegionListData_regionList_regionItems_prefItemsBuilder toBuilder() =>
      new GfetchRegionListData_regionList_regionItems_prefItemsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchRegionListData_regionList_regionItems_prefItems &&
        G__typename == other.G__typename &&
        prefName == other.prefName &&
        prefCode == other.prefCode &&
        areaItems == other.areaItems;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), prefName.hashCode),
            prefCode.hashCode),
        areaItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GfetchRegionListData_regionList_regionItems_prefItems')
          ..add('G__typename', G__typename)
          ..add('prefName', prefName)
          ..add('prefCode', prefCode)
          ..add('areaItems', areaItems))
        .toString();
  }
}

class GfetchRegionListData_regionList_regionItems_prefItemsBuilder
    implements
        Builder<GfetchRegionListData_regionList_regionItems_prefItems,
            GfetchRegionListData_regionList_regionItems_prefItemsBuilder> {
  _$GfetchRegionListData_regionList_regionItems_prefItems? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _prefName;
  String? get prefName => _$this._prefName;
  set prefName(String? prefName) => _$this._prefName = prefName;

  String? _prefCode;
  String? get prefCode => _$this._prefCode;
  set prefCode(String? prefCode) => _$this._prefCode = prefCode;

  ListBuilder<GfetchRegionListData_regionList_regionItems_prefItems_areaItems>?
      _areaItems;
  ListBuilder<GfetchRegionListData_regionList_regionItems_prefItems_areaItems>
      get areaItems => _$this._areaItems ??= new ListBuilder<
          GfetchRegionListData_regionList_regionItems_prefItems_areaItems>();
  set areaItems(
          ListBuilder<
                  GfetchRegionListData_regionList_regionItems_prefItems_areaItems>?
              areaItems) =>
      _$this._areaItems = areaItems;

  GfetchRegionListData_regionList_regionItems_prefItemsBuilder() {
    GfetchRegionListData_regionList_regionItems_prefItems._initializeBuilder(
        this);
  }

  GfetchRegionListData_regionList_regionItems_prefItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _prefName = $v.prefName;
      _prefCode = $v.prefCode;
      _areaItems = $v.areaItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchRegionListData_regionList_regionItems_prefItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchRegionListData_regionList_regionItems_prefItems;
  }

  @override
  void update(
      void Function(
              GfetchRegionListData_regionList_regionItems_prefItemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchRegionListData_regionList_regionItems_prefItems build() => _build();

  _$GfetchRegionListData_regionList_regionItems_prefItems _build() {
    _$GfetchRegionListData_regionList_regionItems_prefItems _$result;
    try {
      _$result = _$v ??
          new _$GfetchRegionListData_regionList_regionItems_prefItems._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GfetchRegionListData_regionList_regionItems_prefItems',
                  'G__typename'),
              prefName: BuiltValueNullFieldError.checkNotNull(
                  prefName,
                  r'GfetchRegionListData_regionList_regionItems_prefItems',
                  'prefName'),
              prefCode: BuiltValueNullFieldError.checkNotNull(
                  prefCode,
                  r'GfetchRegionListData_regionList_regionItems_prefItems',
                  'prefCode'),
              areaItems: areaItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areaItems';
        areaItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GfetchRegionListData_regionList_regionItems_prefItems',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems
    extends GfetchRegionListData_regionList_regionItems_prefItems_areaItems {
  @override
  final String G__typename;
  @override
  final String regionName;
  @override
  final String prefName;
  @override
  final String areaName;
  @override
  final String areaCode;

  factory _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems(
          [void Function(
                  GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder)?
              updates]) =>
      (new GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder()
            ..update(updates))
          ._build();

  _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems._(
      {required this.G__typename,
      required this.regionName,
      required this.prefName,
      required this.areaName,
      required this.areaCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        regionName,
        r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
        'regionName');
    BuiltValueNullFieldError.checkNotNull(
        prefName,
        r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
        'prefName');
    BuiltValueNullFieldError.checkNotNull(
        areaName,
        r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
        'areaName');
    BuiltValueNullFieldError.checkNotNull(
        areaCode,
        r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
        'areaCode');
  }

  @override
  GfetchRegionListData_regionList_regionItems_prefItems_areaItems rebuild(
          void Function(
                  GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder
      toBuilder() =>
          new GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GfetchRegionListData_regionList_regionItems_prefItems_areaItems &&
        G__typename == other.G__typename &&
        regionName == other.regionName &&
        prefName == other.prefName &&
        areaName == other.areaName &&
        areaCode == other.areaCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), regionName.hashCode),
                prefName.hashCode),
            areaName.hashCode),
        areaCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems')
          ..add('G__typename', G__typename)
          ..add('regionName', regionName)
          ..add('prefName', prefName)
          ..add('areaName', areaName)
          ..add('areaCode', areaCode))
        .toString();
  }
}

class GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder
    implements
        Builder<GfetchRegionListData_regionList_regionItems_prefItems_areaItems,
            GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder> {
  _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _prefName;
  String? get prefName => _$this._prefName;
  set prefName(String? prefName) => _$this._prefName = prefName;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  String? _areaCode;
  String? get areaCode => _$this._areaCode;
  set areaCode(String? areaCode) => _$this._areaCode = areaCode;

  GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder() {
    GfetchRegionListData_regionList_regionItems_prefItems_areaItems
        ._initializeBuilder(this);
  }

  GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _regionName = $v.regionName;
      _prefName = $v.prefName;
      _areaName = $v.areaName;
      _areaCode = $v.areaCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GfetchRegionListData_regionList_regionItems_prefItems_areaItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems;
  }

  @override
  void update(
      void Function(
              GfetchRegionListData_regionList_regionItems_prefItems_areaItemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GfetchRegionListData_regionList_regionItems_prefItems_areaItems build() =>
      _build();

  _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems _build() {
    final _$result = _$v ??
        new _$GfetchRegionListData_regionList_regionItems_prefItems_areaItems._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
                'G__typename'),
            regionName: BuiltValueNullFieldError.checkNotNull(
                regionName,
                r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
                'regionName'),
            prefName: BuiltValueNullFieldError.checkNotNull(
                prefName, r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems', 'prefName'),
            areaName: BuiltValueNullFieldError.checkNotNull(
                areaName, r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems', 'areaName'),
            areaCode: BuiltValueNullFieldError.checkNotNull(
                areaCode,
                r'GfetchRegionListData_regionList_regionItems_prefItems_areaItems',
                'areaCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
