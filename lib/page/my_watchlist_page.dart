import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/model/my_watchlist.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/detail.dart';
import 'package:intl/intl.dart';
import 'package:counter_7/fetch/fetchWatchList.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});

  @override
  State<MyWatchListPage> createState() => _MyWatchListPage();
}

class _MyWatchListPage extends State<MyWatchListPage> {
  late final Future<List<MyWatchList>> watch_list_data;

  @override
  void initState() {
    super.initState();
    watch_list_data = fetchWatchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Watch List'),
        ),
        drawer: OwnDrawer(),
        body: FutureBuilder(
            future: watch_list_data,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada Watch List :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyDetailPage(
                                          title: snapshot
                                              .data![index].fields.title,
                                          releaseDate: snapshot
                                              .data![index].fields.releaseDate,
                                          rating: snapshot
                                              .data![index].fields.rating,
                                          watched: snapshot
                                              .data![index].fields.watched,
                                          review: snapshot
                                              .data![index].fields.review,
                                        )));
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                    snapshot.data![index].fields.watched == true
                                        ? Border.all(color: Colors.green)
                                        : Border.all(color: Colors.red),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, blurRadius: 2.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${snapshot.data![index].fields.title}",
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Checkbox(
                                    value:
                                        (snapshot.data![index].fields.watched ==
                                            true),
                                    activeColor: Colors.blue,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        snapshot.data![index].fields.watched =
                                            (value!) ? true : false;
                                      });
                                    }),
                              ],
                            ),
                          )));
                }
              }
            }));
  }
}
