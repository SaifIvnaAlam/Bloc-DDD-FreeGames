part of 'freegamelist_cubit.dart';

@freezed
class FreegamelistState with _$FreegamelistState {
  const factory FreegamelistState.loading() = _loading;
  const factory FreegamelistState.loaded(List<FreeGames> freeGameList) =
      _loaded;
  const factory FreegamelistState.error() = _error;
}
