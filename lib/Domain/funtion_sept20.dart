import 'dart:convert';
import 'package:cricket_score_api/models/models1/fullmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class ApiService {
  Future<Cricket?> firstDatafetchData() async {
    Cricket? cricket;
    final response = await http.get(Uri.parse(
        'https://demo.entitysport.com/wp-admin/admin-ajax.php?action=wpec_api_request&path=matches%2F56578%2Fstatistics'));

    if (response.statusCode == 200) {
      try {
        final jsonData = json.decode(response.body);
        cricket = Cricket.fromJson(jsonData);
        for (int i = 0; i < cricket.response.teams.length; i++) {
          log(cricket.response.teams[i].shortName);
        }
      } catch (e) {
        log('Error parsing player data: $e');
      }
    } else {
      log('Failed to fetch player data');
    }
    return cricket;
  }
}
