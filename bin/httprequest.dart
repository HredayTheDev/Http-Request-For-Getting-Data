import 'dart:convert';

import 'package:http/http.dart';
import 'package:httprequest/httprequest.dart' as httprequest;

void main(List<String> arguments) async {
  var data = await (getData());
  print('${data[0]['userId']}(${data[0]['title']})');
}

Future<List> getData() async {
  const url = 'https://jsonplaceholder.typicode.com/posts';

  final response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('You Have Entered Wrong Password');
  }
}
