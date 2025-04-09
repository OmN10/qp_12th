import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qp_12th/modal/jeemains.modal.dart';

class Mhcetcontroller extends ChangeNotifier {
  List<Example>? _ofData;
  List<Example>? get ofData => _ofData;

  void getData() async {
    try {
      var value = await http.get(Uri.parse(
          "https://mapi.trycatchtech.com/v3/twelfth_question_papers/year_list?category=mains"));

      if (value.statusCode == 200) {
        _ofData = Example.ofFiles(jsonDecode(value.body));

        notifyListeners();
      }
    } catch (e) {}
  }
}


