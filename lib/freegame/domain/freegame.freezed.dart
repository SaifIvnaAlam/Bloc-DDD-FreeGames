// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freegame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreeGameList _$FreeGameListFromJson(Map<String, dynamic> json) {
  return _FreeGameList.fromJson(json);
}

/// @nodoc
mixin _$FreeGameList {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeGameListCopyWith<FreeGameList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeGameListCopyWith<$Res> {
  factory $FreeGameListCopyWith(
          FreeGameList value, $Res Function(FreeGameList) then) =
      _$FreeGameListCopyWithImpl<$Res, FreeGameList>;
  @useResult
  $Res call({int id, String title, String thumbnail, String? description});
}

/// @nodoc
class _$FreeGameListCopyWithImpl<$Res, $Val extends FreeGameList>
    implements $FreeGameListCopyWith<$Res> {
  _$FreeGameListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? description = freezed,
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
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FreeGameListCopyWith<$Res>
    implements $FreeGameListCopyWith<$Res> {
  factory _$$_FreeGameListCopyWith(
          _$_FreeGameList value, $Res Function(_$_FreeGameList) then) =
      __$$_FreeGameListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String thumbnail, String? description});
}

/// @nodoc
class __$$_FreeGameListCopyWithImpl<$Res>
    extends _$FreeGameListCopyWithImpl<$Res, _$_FreeGameList>
    implements _$$_FreeGameListCopyWith<$Res> {
  __$$_FreeGameListCopyWithImpl(
      _$_FreeGameList _value, $Res Function(_$_FreeGameList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? description = freezed,
  }) {
    return _then(_$_FreeGameList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreeGameList implements _FreeGameList {
  const _$_FreeGameList(
      {required this.id,
      required this.title,
      required this.thumbnail,
      this.description});

  factory _$_FreeGameList.fromJson(Map<String, dynamic> json) =>
      _$$_FreeGameListFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String? description;

  @override
  String toString() {
    return 'FreeGameList(id: $id, title: $title, thumbnail: $thumbnail, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreeGameList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, thumbnail, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreeGameListCopyWith<_$_FreeGameList> get copyWith =>
      __$$_FreeGameListCopyWithImpl<_$_FreeGameList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreeGameListToJson(
      this,
    );
  }
}

abstract class _FreeGameList implements FreeGameList {
  const factory _FreeGameList(
      {required final int id,
      required final String title,
      required final String thumbnail,
      final String? description}) = _$_FreeGameList;

  factory _FreeGameList.fromJson(Map<String, dynamic> json) =
      _$_FreeGameList.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_FreeGameListCopyWith<_$_FreeGameList> get copyWith =>
      throw _privateConstructorUsedError;
}
