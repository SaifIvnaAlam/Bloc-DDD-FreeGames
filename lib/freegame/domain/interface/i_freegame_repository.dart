import 'package:gg/freegame/domain/freegame.dart';

abstract class IFreeGameRepository {
  Future<List<FreeGameList>> getFreeGameList();
}
