part of 'giveaway_by_id_cubit.dart';

@freezed
class GiveawayByIdState with _$GiveawayByIdState {
  const factory GiveawayByIdState.loading() = _loadingstate;
  const factory GiveawayByIdState.loaded(GiveAway giveAway) = _loadedstate;
  const factory GiveawayByIdState.error() = _errorstate;
}
