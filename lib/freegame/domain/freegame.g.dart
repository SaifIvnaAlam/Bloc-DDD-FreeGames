// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freegame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreeGames _$$_FreeGamesFromJson(Map<String, dynamic> json) => _$_FreeGames(
      id: json['id'] as int?,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      shortDescription: json['short_description'] as String? ?? 'N/A',
      description: json['description'] as String? ?? 'N/A',
      gameUrl: json['game_url'] as String? ?? 'N/A',
      genre: json['genre'] as String? ?? 'N/A',
      platform: json['platform'] as String? ?? 'N/A',
      publisher: json['publisher'] as String? ?? 'N/A',
      developer: json['developer'] as String? ?? 'N/A',
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      freetogameProfileUrl: json['freetogame_profile_url'] as String? ?? 'N/A',
    );

Map<String, dynamic> _$$_FreeGamesToJson(_$_FreeGames instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'short_description': instance.shortDescription,
      'description': instance.description,
      'game_url': instance.gameUrl,
      'genre': instance.genre,
      'platform': instance.platform,
      'publisher': instance.publisher,
      'developer': instance.developer,
      'release_date': instance.releaseDate?.toIso8601String(),
      'freetogame_profile_url': instance.freetogameProfileUrl,
    };
