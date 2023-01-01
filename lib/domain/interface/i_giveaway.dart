import 'package:gg/domain/giveaway.dart';

abstract class IGiveAwayRepository {
  Future<List<GiveAway>> getGiveAway();

  Future<GiveAway> getGiveAwayById(int id);
}
