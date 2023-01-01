import 'dart:convert';
import 'dart:io';

import 'package:gg/domain/giveaway.dart';
import 'package:gg/domain/interface/i_giveaway.dart';
import 'package:http/http.dart' as http;

import '../utils/logger.dart';

class GiveAwayRepository implements IGiveAwayRepository {
  @override
  Future<List<GiveAway>> getGiveAway() async {
    try {
      var response =
          await http.get(Uri.parse("https://www.gamerpower.com/api/giveaways"));

      var data = jsonDecode(response.body) as List;
      var giveAwayList = data.map((json) => GiveAway.fromJson(json));

      return giveAwayList.toList();
    } catch (e) {
      print("Api call error $e");
    }

    throw UnimplementedError();
  }

  @override
  Future<GiveAway> getGiveAwayById(int id) async {
    String endpoint = id.toString();
    var response = await http
        .get(Uri.parse("https://www.gamerpower.com/api/giveaway?id=$endpoint"));

    var data = jsonDecode(response.body);
    var giveawayById = GiveAway.fromJson(data as Map<String, dynamic>);

    return (giveawayById);
  }
}
