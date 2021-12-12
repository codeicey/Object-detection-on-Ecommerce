import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:flutter_realtime_detection/serviceModel.dart';

class Service {
  Future getDetails() async {
     String url = "http://192.168.0.130:8000/new/items/";
   var theApi;
    var response = await http.get(Uri.parse(url));

     theApi = json.decode(response.body);
     return theApi;
  }
}
