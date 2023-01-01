import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gg/domain/giveaway.dart';
import 'package:gg/domain/interface/i_giveaway.dart';

part 'giveaway_by_id_state.dart';
part 'giveaway_by_id_cubit.freezed.dart';

class GiveawayByIdCubit extends Cubit<GiveawayByIdState> {
  final IGiveAwayRepository _giveAwayRepository;

  GiveawayByIdCubit(this._giveAwayRepository)
      : super(const GiveawayByIdState.loading());

  Future<void> getGiveawayById(int id) async {
    int index = id;

    var giveawayById = await _giveAwayRepository.getGiveAwayById(index);
    emit(GiveawayByIdState.loaded(giveawayById));
  }
}
