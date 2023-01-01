import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gg/domain/giveaway.dart';
import 'package:gg/domain/interface/i_giveaway.dart';

part 'giveaway_state.dart';
part 'giveaway_cubit.freezed.dart';

class GiveawayCubit extends Cubit<GiveawayState> {
  final IGiveAwayRepository _giveAwayRepository;

  GiveawayCubit(this._giveAwayRepository)
      : super(const GiveawayState.loading());

  Future<void> getGiveAway() async {
    var giveawayList = await _giveAwayRepository.getGiveAway();
    emit(GiveawayState.loaded(giveawayList));
  }
}
