import 'package:freezed_annotation/freezed_annotation.dart';

part 'freegame.freezed.dart';
part 'freegame.g.dart';

@freezed
class FreeGameList with _$FreeGameList {
  const factory FreeGameList(
      {required int id,
      required String title,
      required String thumbnail}) = _FreeGameList;

  factory FreeGameList.fromJson(Map<String, dynamic> json) =>
      _$FreeGameListFromJson(json);

  // factory FreeGameList.empty() => _FreeGameList();
}
