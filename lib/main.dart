import 'package:flutter/material.dart';
import 'package:myflutterapp/app/screens/HomeScreen/home_screen.dart';
import 'package:myflutterapp/app/screens/HomeScreen2/home_screen2.dart';

import 'app/screens/misc/my_second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen2(),
    );
  }
}
