part of 'free_game_by_id_cubit.dart';

@freezed
class FreeGameByIdState with _$FreeGameByIdState {
  const factory FreeGameByIdState.loading() = _loading;
  const factory FreeGameByIdState.loaded(FreeGames freeGames) = _loaded;
  const factory FreeGameByIdState.error() = _error;
}
