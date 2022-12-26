import 'package:http/http.dart' as http;
import 'package:counter_7/model/my_watchlist.dart';
import 'dart:convert';

Future<List<MyWatchList>> fetchWatchList() async {
  var url = Uri.parse('http://127.0.0.1:8000/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<MyWatchList> listMyWatch = [];
  // print(data[1]);
  for (var d in data) {
    if (d != null) {
      listMyWatch.add(MyWatchList.fromJson(d));
      // print(MyWatchList.fromJson(d).fields.watched);
    }
  }

  return listMyWatch;
}
