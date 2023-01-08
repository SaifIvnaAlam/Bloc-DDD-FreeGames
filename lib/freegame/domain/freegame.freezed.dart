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
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description', defaultValue: 'N/A')
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_url', defaultValue: 'N/A')
  String? get gameUrl => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get genre => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get publisher => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get developer => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      String title,
      String thumbnail,
      @JsonKey(name: 'short_description', defaultValue: 'N/A')
          String? shortDescription,
      @JsonKey(defaultValue: 'N/A')
          String? description,
      @JsonKey(name: 'game_url', defaultValue: 'N/A')
          String? gameUrl,
      @JsonKey(defaultValue: 'N/A')
          String? genre,
      @JsonKey(defaultValue: 'N/A')
          String? platform,
      @JsonKey(defaultValue: 'N/A')
          String? publisher,
      @JsonKey(defaultValue: 'N/A')
          String? developer,
      @JsonKey(name: 'release_date')
          DateTime? releaseDate});
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
    Object? id = freezed,
    Object? title = null,
    Object? thumbnail = null,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? gameUrl = freezed,
    Object? genre = freezed,
    Object? platform = freezed,
    Object? publisher = freezed,
    Object? developer = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gameUrl: freezed == gameUrl
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      developer: freezed == developer
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $Res call(
      {int? id,
      String title,
      String thumbnail,
      @JsonKey(name: 'short_description', defaultValue: 'N/A')
          String? shortDescription,
      @JsonKey(defaultValue: 'N/A')
          String? description,
      @JsonKey(name: 'game_url', defaultValue: 'N/A')
          String? gameUrl,
      @JsonKey(defaultValue: 'N/A')
          String? genre,
      @JsonKey(defaultValue: 'N/A')
          String? platform,
      @JsonKey(defaultValue: 'N/A')
          String? publisher,
      @JsonKey(defaultValue: 'N/A')
          String? developer,
      @JsonKey(name: 'release_date')
          DateTime? releaseDate});
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
    Object? id = freezed,
    Object? title = null,
    Object? thumbnail = null,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? gameUrl = freezed,
    Object? genre = freezed,
    Object? platform = freezed,
    Object? publisher = freezed,
    Object? developer = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$_FreeGames(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gameUrl: freezed == gameUrl
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      developer: freezed == developer
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreeGames implements _FreeGames {
  const _$_FreeGames(
      {this.id,
      required this.title,
      required this.thumbnail,
      @JsonKey(name: 'short_description', defaultValue: 'N/A')
          this.shortDescription,
      @JsonKey(defaultValue: 'N/A')
          this.description,
      @JsonKey(name: 'game_url', defaultValue: 'N/A')
          this.gameUrl,
      @JsonKey(defaultValue: 'N/A')
          this.genre,
      @JsonKey(defaultValue: 'N/A')
          this.platform,
      @JsonKey(defaultValue: 'N/A')
          this.publisher,
      @JsonKey(defaultValue: 'N/A')
          this.developer,
      @JsonKey(name: 'release_date')
          this.releaseDate});

  factory _$_FreeGames.fromJson(Map<String, dynamic> json) =>
      _$$_FreeGamesFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  @JsonKey(name: 'short_description', defaultValue: 'N/A')
  final String? shortDescription;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? description;
  @override
  @JsonKey(name: 'game_url', defaultValue: 'N/A')
  final String? gameUrl;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? genre;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? platform;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? publisher;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? developer;
  @override
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;

  @override
  String toString() {
    return 'FreeGames(id: $id, title: $title, thumbnail: $thumbnail, shortDescription: $shortDescription, description: $description, gameUrl: $gameUrl, genre: $genre, platform: $platform, publisher: $publisher, developer: $developer, releaseDate: $releaseDate)';
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
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gameUrl, gameUrl) || other.gameUrl == gameUrl) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.developer, developer) ||
                other.developer == developer) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      thumbnail,
      shortDescription,
      description,
      gameUrl,
      genre,
      platform,
      publisher,
      developer,
      releaseDate);

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
      {final int? id,
      required final String title,
      required final String thumbnail,
      @JsonKey(name: 'short_description', defaultValue: 'N/A')
          final String? shortDescription,
      @JsonKey(defaultValue: 'N/A')
          final String? description,
      @JsonKey(name: 'game_url', defaultValue: 'N/A')
          final String? gameUrl,
      @JsonKey(defaultValue: 'N/A')
          final String? genre,
      @JsonKey(defaultValue: 'N/A')
          final String? platform,
      @JsonKey(defaultValue: 'N/A')
          final String? publisher,
      @JsonKey(defaultValue: 'N/A')
          final String? developer,
      @JsonKey(name: 'release_date')
          final DateTime? releaseDate}) = _$_FreeGames;

  factory _FreeGames.fromJson(Map<String, dynamic> json) =
      _$_FreeGames.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  @JsonKey(name: 'short_description', defaultValue: 'N/A')
  String? get shortDescription;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get description;
  @override
  @JsonKey(name: 'game_url', defaultValue: 'N/A')
  String? get gameUrl;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get genre;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get platform;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get publisher;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get developer;
  @override
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$_FreeGamesCopyWith<_$_FreeGames> get copyWith =>
      throw _privateConstructorUsedError;
}
