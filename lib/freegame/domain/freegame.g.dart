// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freegame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreeGameList _$$_FreeGameListFromJson(Map<String, dynamic> json) =>
    _$_FreeGameList(
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_FreeGameListToJson(_$_FreeGameList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
    };
