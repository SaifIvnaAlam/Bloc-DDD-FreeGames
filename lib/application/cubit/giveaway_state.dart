part of 'giveaway_cubit.dart';

@freezed
class GiveawayState with _$GiveawayState {
  const factory GiveawayState.loading() = _loadingState;
  const factory GiveawayState.loaded(List<GiveAway> giveAway) = _loadedState;
  const factory GiveawayState.error() = _errorState;
}
