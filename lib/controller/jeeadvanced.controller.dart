import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qp_12th/modal/jeemains.modal.dart';

class Jeeadvancedcontroller extends ChangeNotifier {
  List<Example>? ofdata;
  List<Example>? get ofData => ofdata;

  void getData() async {
    try {
      var value = await http.get(Uri.parse(
          "https://mapi.trycatchtech.com/v3/twelfth_question_papers/year_list?category=mains"));

      if (value.statusCode == 200) {
        ofdata = Example.ofFiles(jsonDecode(value.body));

        notifyListeners();
      }
    } catch (e) {}
  }
}
