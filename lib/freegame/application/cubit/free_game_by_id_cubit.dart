import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gg/freegame/domain/freegame.dart';
import 'package:gg/freegame/domain/interface/i_freegame_repository.dart';

part 'free_game_by_id_state.dart';
part 'free_game_by_id_cubit.freezed.dart';

class FreeGameByIdCubit extends Cubit<FreeGameByIdState> {
  final IFreeGameRepository _freeGameRepository;

  FreeGameByIdCubit(this._freeGameRepository)
      : super(const FreeGameByIdState.loading());

  Future<void> getFreeGameById(int id) async {
    var freeGames = await _freeGameRepository.getFreeGame(id);

    emit(FreeGameByIdState.loaded(freeGames));
  }
}
