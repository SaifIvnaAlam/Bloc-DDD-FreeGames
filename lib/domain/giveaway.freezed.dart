// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiveAway _$GiveAwayFromJson(Map<String, dynamic> json) {
  return _GiveAway.fromJson(json);
}

/// @nodoc
mixin _$GiveAway {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get worth => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiveAwayCopyWith<GiveAway> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiveAwayCopyWith<$Res> {
  factory $GiveAwayCopyWith(GiveAway value, $Res Function(GiveAway) then) =
      _$GiveAwayCopyWithImpl<$Res, GiveAway>;
  @useResult
  $Res call(
      {int id,
      String title,
      String worth,
      String thumbnail,
      String image,
      String? description});
}

/// @nodoc
class _$GiveAwayCopyWithImpl<$Res, $Val extends GiveAway>
    implements $GiveAwayCopyWith<$Res> {
  _$GiveAwayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? worth = null,
    Object? thumbnail = null,
    Object? image = null,
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
      worth: null == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GiveAwayCopyWith<$Res> implements $GiveAwayCopyWith<$Res> {
  factory _$$_GiveAwayCopyWith(
          _$_GiveAway value, $Res Function(_$_GiveAway) then) =
      __$$_GiveAwayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String worth,
      String thumbnail,
      String image,
      String? description});
}

/// @nodoc
class __$$_GiveAwayCopyWithImpl<$Res>
    extends _$GiveAwayCopyWithImpl<$Res, _$_GiveAway>
    implements _$$_GiveAwayCopyWith<$Res> {
  __$$_GiveAwayCopyWithImpl(
      _$_GiveAway _value, $Res Function(_$_GiveAway) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? worth = null,
    Object? thumbnail = null,
    Object? image = null,
    Object? description = freezed,
  }) {
    return _then(_$_GiveAway(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      worth: null == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_GiveAway implements _GiveAway {
  const _$_GiveAway(
      {required this.id,
      required this.title,
      required this.worth,
      required this.thumbnail,
      required this.image,
      this.description});

  factory _$_GiveAway.fromJson(Map<String, dynamic> json) =>
      _$$_GiveAwayFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String worth;
  @override
  final String thumbnail;
  @override
  final String image;
  @override
  final String? description;

  @override
  String toString() {
    return 'GiveAway(id: $id, title: $title, worth: $worth, thumbnail: $thumbnail, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GiveAway &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.worth, worth) || other.worth == worth) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, worth, thumbnail, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GiveAwayCopyWith<_$_GiveAway> get copyWith =>
      __$$_GiveAwayCopyWithImpl<_$_GiveAway>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GiveAwayToJson(
      this,
    );
  }
}

abstract class _GiveAway implements GiveAway {
  const factory _GiveAway(
      {required final int id,
      required final String title,
      required final String worth,
      required final String thumbnail,
      required final String image,
      final String? description}) = _$_GiveAway;

  factory _GiveAway.fromJson(Map<String, dynamic> json) = _$_GiveAway.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get worth;
  @override
  String get thumbnail;
  @override
  String get image;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_GiveAwayCopyWith<_$_GiveAway> get copyWith =>
      throw _privateConstructorUsedError;
}
