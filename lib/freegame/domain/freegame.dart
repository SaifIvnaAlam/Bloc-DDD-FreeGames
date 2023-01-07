import 'package:freezed_annotation/freezed_annotation.dart';

part 'freegame.freezed.dart';
part 'freegame.g.dart';

@freezed
class FreeGames with _$FreeGames {
  const factory FreeGames({
    int? id,
    required String title,
    required String thumbnail,
    String? description,
  }) = _FreeGames;

  factory FreeGames.fromJson(Map<String, dynamic> json) =>
      _$FreeGamesFromJson(json);

  // factory FreeGames.empty() => _FreeGames();
}
