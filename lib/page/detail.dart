import 'package:counter_7/main.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDetailPage extends StatefulWidget {
  const MyDetailPage({
    super.key,
    required this.title,
    required this.releaseDate,
    required this.rating,
    required this.watched,
    required this.review,
  });

  final String title;
  final DateTime releaseDate;
  final int rating;
  final String watched;
  final String review;

  @override
  State<MyDetailPage> createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: OwnDrawer(),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Center(
              child: Text(
                '${widget.title}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Text(
                    'Release Date: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      '${DateFormat.yMMMMd('en_US').format(widget.releaseDate)}'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Text(
                    'Rating: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  if (widget.rating == null) ...[
                    Text('Belum memberikan rating'),
                  ] else ...[
                    Text('${widget.rating}'),
                    Text('/5'),
                  ]
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Text(
                    'Status: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  if (widget.watched == "true") ...[
                    const Text('Watched')
                  ] else ...[
                    const Text('Not Watched')
                  ]
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Text(
                    'Review: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Text(
                    '${widget.review} ',
                  ),
                ],
              ),
            ),
            Expanded(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Back",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
