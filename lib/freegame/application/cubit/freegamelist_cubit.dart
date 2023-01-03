import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gg/freegame/domain/freegame.dart';
import 'package:gg/freegame/domain/interface/i_freegame_repository.dart';

part 'freegamelist_state.dart';
part 'freegamelist_cubit.freezed.dart';

class FreegamelistCubit extends Cubit<FreegamelistState> {
  final IFreeGameRepository _iFreeGameRepository;

  FreegamelistCubit(this._iFreeGameRepository)
      : super(const FreegamelistState.loading());

  Future<void> getFreeGameList() async {
    var freeGameList = await _iFreeGameRepository.getFreeGameList();

    emit(FreegamelistState.loaded(freeGameList));
  }
}
