import 'package:flutter/material.dart';
import 'package:myflutterapp/app/screens/HomeScreen/home_screen.dart';

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
      home: HomeScreen(),
    );
  }
}
