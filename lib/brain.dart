import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
String? strresponce='';
Map mapresponce='a:b' as Map;
Map datarar ='' as Map;
//
Future<String> getdata(String s) async {
  http.Response response;

  response = await http
      .get(Uri.parse('https://blockchain.info/ticker'));
    mapresponce= jsonDecode(response.body);
    datarar = mapresponce['${s}'];
  return (datarar['15m'].toString());

  // final ans = toJson(response);
  // print(ans);
}

// class Album {
//   final int userId;
//   final int id;
//   final String title;
//
//   const Album({
//     required this.userId,
//     required this.id,
//     required this.title,
//   });
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }