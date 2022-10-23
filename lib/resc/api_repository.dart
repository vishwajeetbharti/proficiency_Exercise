import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:proficiency_exercise/Model/model.dart';

class CallingForApi {
  Future<DataModel> callingApi() async {
    try {
      var response = await http.get(
          Uri.https("mocki.io", "/v1/01529195-b0ef-4212-b15f-123cc102a7dd"));
      DataModel jsonData = DataModel.fromJson(jsonDecode(response.body));
      return jsonData;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
