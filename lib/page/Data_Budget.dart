import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/Data_Budget.dart';
import 'package:counter_7/page/drawer.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: OwnDrawer(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
            children: daftar.map((data) {
          padding:
          const EdgeInsets.all(20);
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            '${data[0]}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text("${data[1]}"),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text("${data[3]}"),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text("${data[2]}"),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
