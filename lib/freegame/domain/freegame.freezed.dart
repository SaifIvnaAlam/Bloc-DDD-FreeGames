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

FreeGames _$FreeGamesFromJson(Map<String, dynamic> json) {
  return _FreeGames.fromJson(json);
}

/// @nodoc
mixin _$FreeGames {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeGamesCopyWith<FreeGames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeGamesCopyWith<$Res> {
  factory $FreeGamesCopyWith(FreeGames value, $Res Function(FreeGames) then) =
      _$FreeGamesCopyWithImpl<$Res, FreeGames>;
  @useResult
  $Res call({int id, String title, String thumbnail, String? description});
}

/// @nodoc
class _$FreeGamesCopyWithImpl<$Res, $Val extends FreeGames>
    implements $FreeGamesCopyWith<$Res> {
  _$FreeGamesCopyWithImpl(this._value, this._then);

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
abstract class _$$_FreeGamesCopyWith<$Res> implements $FreeGamesCopyWith<$Res> {
  factory _$$_FreeGamesCopyWith(
          _$_FreeGames value, $Res Function(_$_FreeGames) then) =
      __$$_FreeGamesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String thumbnail, String? description});
}

/// @nodoc
class __$$_FreeGamesCopyWithImpl<$Res>
    extends _$FreeGamesCopyWithImpl<$Res, _$_FreeGames>
    implements _$$_FreeGamesCopyWith<$Res> {
  __$$_FreeGamesCopyWithImpl(
      _$_FreeGames _value, $Res Function(_$_FreeGames) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? description = freezed,
  }) {
    return _then(_$_FreeGames(
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
class _$_FreeGames implements _FreeGames {
  const _$_FreeGames(
      {required this.id,
      required this.title,
      required this.thumbnail,
      this.description});

  factory _$_FreeGames.fromJson(Map<String, dynamic> json) =>
      _$$_FreeGamesFromJson(json);

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
    return 'FreeGames(id: $id, title: $title, thumbnail: $thumbnail, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreeGames &&
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
  _$$_FreeGamesCopyWith<_$_FreeGames> get copyWith =>
      __$$_FreeGamesCopyWithImpl<_$_FreeGames>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreeGamesToJson(
      this,
    );
  }
}

abstract class _FreeGames implements FreeGames {
  const factory _FreeGames(
      {required final int id,
      required final String title,
      required final String thumbnail,
      final String? description}) = _$_FreeGames;

  factory _FreeGames.fromJson(Map<String, dynamic> json) =
      _$_FreeGames.fromJson;

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
  _$$_FreeGamesCopyWith<_$_FreeGames> get copyWith =>
      throw _privateConstructorUsedError;
}
