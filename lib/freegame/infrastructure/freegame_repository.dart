import 'dart:convert';

import 'package:gg/freegame/domain/freegame.dart';
import 'package:gg/freegame/domain/interface/i_freegame_repository.dart';
import 'package:http/http.dart' as http;

class FreeGameRepository implements IFreeGameRepository {
  @override
  Future<List<FreeGameList>> getFreeGameList() async {
    var response =
        await http.get(Uri.parse("https://www.freetogame.com/api/games"));

    print(response.body);
    var data = jsonDecode(response.body) as List;
    var result = data.map((json) => FreeGameList.fromJson(json));

    return result.toList();
  }
}
