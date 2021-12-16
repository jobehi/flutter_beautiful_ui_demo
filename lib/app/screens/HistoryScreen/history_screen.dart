import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key}) : super(key: key);

  List<Map<String, dynamic>> myList = [
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
    {"title": "Test1", "date": "17-12-2021", "result": 233},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Calculs récents',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: /* ListView(
        children: myList
            .map((element) => ListElement(
                title: element['title'],
                date: element['date'],
                result: element['result'].toString()))
            .toList(),
      ), */
            ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, position) {
                  return ListElement(
                      title: myList[position]['title'],
                      date: myList[position]['date'],
                      result: myList[position]['result'].toString());
                }));
  }
}

class ListElement extends StatelessWidget {
  const ListElement(
      {Key? key, required this.title, required this.date, required this.result})
      : super(key: key);

  final String title;
  final String date;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            result,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
