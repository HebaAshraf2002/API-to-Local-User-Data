import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask1/models/User_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  String endpoint = "https://jsonplaceholder.typicode.com/users";
  List<User> users = [];

 Future<List<User>> getUser() async {
    try {
      var respone = await http.get(Uri.parse(endpoint));
      if (respone.statusCode == 200) {
        var jsonData = jsonDecode(respone.body);
        jsonData.forEach((item) {
          User user = User.fromJson(item);
          users.add(user);
        });
      }
    } catch (e) {
      print(e.toString());
    }
    return users;
  }
}
