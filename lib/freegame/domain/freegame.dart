import 'package:freezed_annotation/freezed_annotation.dart';

part 'freegame.freezed.dart';
part 'freegame.g.dart';

@freezed
class FreeGames with _$FreeGames {
  const factory FreeGames({
    int? id,
    required String title,
    required String thumbnail,
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
    @JsonKey(
      name: 'release_date',
    )
        DateTime? releaseDate,
  }) = _FreeGames;

  factory FreeGames.fromJson(Map<String, dynamic> json) =>
      _$FreeGamesFromJson(json);

  // factory FreeGames.empty() => _FreeGames();
}
