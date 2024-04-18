// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toilet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Toilets _$ToiletsFromJson(Map<String, dynamic> json) {
  return _Toilets.fromJson(json);
}

/// @nodoc
mixin _$Toilets {
  @JsonKey(name: 'data')
  List<Toilet> get toiletData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToiletsCopyWith<Toilets> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToiletsCopyWith<$Res> {
  factory $ToiletsCopyWith(Toilets value, $Res Function(Toilets) then) = _$ToiletsCopyWithImpl<$Res, Toilets>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<Toilet> toiletData});
}

/// @nodoc
class _$ToiletsCopyWithImpl<$Res, $Val extends Toilets> implements $ToiletsCopyWith<$Res> {
  _$ToiletsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toiletData = null,
  }) {
    return _then(_value.copyWith(
      toiletData: null == toiletData
          ? _value.toiletData
          : toiletData // ignore: cast_nullable_to_non_nullable
              as List<Toilet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToiletsImplCopyWith<$Res> implements $ToiletsCopyWith<$Res> {
  factory _$$ToiletsImplCopyWith(_$ToiletsImpl value, $Res Function(_$ToiletsImpl) then) = __$$ToiletsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<Toilet> toiletData});
}

/// @nodoc
class __$$ToiletsImplCopyWithImpl<$Res> extends _$ToiletsCopyWithImpl<$Res, _$ToiletsImpl> implements _$$ToiletsImplCopyWith<$Res> {
  __$$ToiletsImplCopyWithImpl(_$ToiletsImpl _value, $Res Function(_$ToiletsImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toiletData = null,
  }) {
    return _then(_$ToiletsImpl(
      toiletData: null == toiletData
          ? _value._toiletData
          : toiletData // ignore: cast_nullable_to_non_nullable
              as List<Toilet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToiletsImpl implements _Toilets {
  const _$ToiletsImpl({@JsonKey(name: 'data') required final List<Toilet> toiletData}) : _toiletData = toiletData;

  factory _$ToiletsImpl.fromJson(Map<String, dynamic> json) => _$$ToiletsImplFromJson(json);

  final List<Toilet> _toiletData;
  @override
  @JsonKey(name: 'data')
  List<Toilet> get toiletData {
    if (_toiletData is EqualUnmodifiableListView) return _toiletData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toiletData);
  }

  @override
  String toString() {
    return 'Toilets(toiletData: $toiletData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ToiletsImpl && const DeepCollectionEquality().equals(other._toiletData, _toiletData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_toiletData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToiletsImplCopyWith<_$ToiletsImpl> get copyWith => __$$ToiletsImplCopyWithImpl<_$ToiletsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToiletsImplToJson(
      this,
    );
  }
}

abstract class _Toilets implements Toilets {
  const factory _Toilets({@JsonKey(name: 'data') required final List<Toilet> toiletData}) = _$ToiletsImpl;

  factory _Toilets.fromJson(Map<String, dynamic> json) = _$ToiletsImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Toilet> get toiletData;
  @override
  @JsonKey(ignore: true)
  _$$ToiletsImplCopyWith<_$ToiletsImpl> get copyWith => throw _privateConstructorUsedError;
}

Toilet _$ToiletFromJson(Map<String, dynamic> json) {
  return _Toilet.fromJson(json);
}

/// @nodoc
mixin _$Toilet {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  int get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToiletCopyWith<Toilet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToiletCopyWith<$Res> {
  factory $ToiletCopyWith(Toilet value, $Res Function(Toilet) then) = _$ToiletCopyWithImpl<$Res, Toilet>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'title') String title, @JsonKey(name: 'kind') int kind});
}

/// @nodoc
class _$ToiletCopyWithImpl<$Res, $Val extends Toilet> implements $ToiletCopyWith<$Res> {
  _$ToiletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? kind = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToiletImplCopyWith<$Res> implements $ToiletCopyWith<$Res> {
  factory _$$ToiletImplCopyWith(_$ToiletImpl value, $Res Function(_$ToiletImpl) then) = __$$ToiletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'title') String title, @JsonKey(name: 'kind') int kind});
}

/// @nodoc
class __$$ToiletImplCopyWithImpl<$Res> extends _$ToiletCopyWithImpl<$Res, _$ToiletImpl> implements _$$ToiletImplCopyWith<$Res> {
  __$$ToiletImplCopyWithImpl(_$ToiletImpl _value, $Res Function(_$ToiletImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? kind = null,
  }) {
    return _then(_$ToiletImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToiletImpl implements _Toilet {
  const _$ToiletImpl({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'kind') required this.kind});

  factory _$ToiletImpl.fromJson(Map<String, dynamic> json) => _$$ToiletImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'kind')
  final int kind;

  @override
  String toString() {
    return 'Toilet(id: $id, title: $title, kind: $kind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToiletImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, kind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToiletImplCopyWith<_$ToiletImpl> get copyWith => __$$ToiletImplCopyWithImpl<_$ToiletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToiletImplToJson(
      this,
    );
  }
}

abstract class _Toilet implements Toilet {
  const factory _Toilet({@JsonKey(name: 'id') required final int id, @JsonKey(name: 'title') required final String title, @JsonKey(name: 'kind') required final int kind}) = _$ToiletImpl;

  factory _Toilet.fromJson(Map<String, dynamic> json) = _$ToiletImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'kind')
  int get kind;
  @override
  @JsonKey(ignore: true)
  _$$ToiletImplCopyWith<_$ToiletImpl> get copyWith => throw _privateConstructorUsedError;
}
