// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giveaway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiveAway _$$_GiveAwayFromJson(Map<String, dynamic> json) => _$_GiveAway(
      id: json['id'] as int,
      title: json['title'] as String,
      worth: json['worth'] as String,
      thumbnail: json['thumbnail'] as String,
      image: json['image'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_GiveAwayToJson(_$_GiveAway instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'worth': instance.worth,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
      'description': instance.description,
    };
