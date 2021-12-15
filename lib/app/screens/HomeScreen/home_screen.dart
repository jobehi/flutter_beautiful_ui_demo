import 'package:flutter/material.dart';

import 'widgets/my_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '26+3',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '19998',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    MyButton(
                      content: 'C',
                      isDark: false,
                    ),
                    MyButton(
                      content: '(',
                      isDark: false,
                    ),
                    MyButton(
                      content: ')',
                      isDark: false,
                    ),
                    MyButton(
                      content: '/',
                      isDark: false,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    MyButton(content: '7'),
                    MyButton(content: '8'),
                    MyButton(content: '9'),
                    MyButton(
                      content: 'X',
                      isDark: false,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    MyButton(content: '1'),
                    MyButton(content: '1'),
                    MyButton(content: '1'),
                    MyButton(content: '1'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    MyButton(content: '1'),
                    MyButton(content: '1'),
                    MyButton(content: '1'),
                    MyButton(content: '1'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    MyButton(
                      content: '1',
                      doesStretch: true,
                    ),
                    MyButton(content: '1'),
                    MyButton(content: '1'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
