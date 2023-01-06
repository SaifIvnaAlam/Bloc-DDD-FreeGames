import 'package:gg/freegame/domain/freegame.dart';

abstract class IFreeGameRepository {
  Future<List<FreeGames>> getFreeGameList();

  Future<FreeGames> getFreeGame(int id);
}
