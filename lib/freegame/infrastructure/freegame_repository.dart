import 'dart:convert';

import 'package:gg/freegame/domain/freegame.dart';
import 'package:gg/freegame/domain/interface/i_freegame_repository.dart';
import 'package:gg/view/freegamelist_page.dart';
import 'package:http/http.dart' as http;

class FreeGameRepository implements IFreeGameRepository {
  @override
  Future<List<FreeGames>> getFreeGameList() async {
    var response =
        await http.get(Uri.parse("https://www.freetogame.com/api/games"));

    print(response.body);
    var data = jsonDecode(response.body) as List;
    var result = data.map((json) => FreeGames.fromJson(json));

    return result.toList();
  }

  @override
  Future<FreeGames> getFreeGame(int id) async {
    String endpoint = id.toString();
    var response = await http
        .get(Uri.parse("https://www.gamerpower.com/api/giveaway?id=$endpoint"));

    var data = jsonDecode(response.body);
    var giveawayById = FreeGames.fromJson(data as Map<String, dynamic>);

    return (giveawayById);
    throw UnimplementedError();
  }
}
