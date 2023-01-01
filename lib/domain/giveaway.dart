import 'package:freezed_annotation/freezed_annotation.dart';

part 'giveaway.freezed.dart';
part 'giveaway.g.dart';

@freezed
class GiveAway with _$GiveAway {
  const factory GiveAway({
    required int id,
    required String title,
    required String worth,
    required String thumbnail,
    required String image,
    String? description,
  }) = _GiveAway;

  factory GiveAway.fromJson(Map<String, dynamic> json) =>
      _$GiveAwayFromJson(json);

  // factory GiveAway.empty() => _GiveAway();
}
