import 'dart:convert';
import 'package:cozy_app/model/recommended.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RecommendedProvider extends ChangeNotifier {
  getRecommendedSpace() async {
    var url = Uri.http('bwa-cozy.herokuapp.com', '/recommended-spaces');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<Recommended> recommended =
          data.map((item) => Recommended.fromJson(item)).toList();
      return recommended;
    } else {
      return <Recommended>[];
    }
  }
}
