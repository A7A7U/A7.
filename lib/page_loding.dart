// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:doctor_app/file/models.dart';
// var get=fetchUsers;
// final String url =
//     'https://api.mockaroo.com/api/52a410a0?count=1000&key=9acaf6d0';
// List<User> parseUser(String responseBody) {
//   var list = json.decode(responseBody) as List<dynamic>;
//   var users = list.map((e) => User.fromJson(e)).toList();
//   return users;
// }
//
// Future<List<User>> fetchUsers() async {
//   final http.Response response = await http.get(Uri.https("dummyjson.com", "users"));
//   if (response.statusCode == 200) {
//     return compute(parseUser, response.body);
//   } else {
//     throw Exception(response.statusCode);
//
//   }
// }
