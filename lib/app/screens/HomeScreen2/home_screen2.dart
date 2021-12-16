import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'widgets/mon_bouton.dart';

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({Key? key}) : super(key: key);

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  String myEquation = '';
  double result = 0;
  String currentDouble = '';

  var myButtons = [
    [
      {"content": "C", "is_dark": false, "does_stretch": false},
      {"content": "(", "is_dark": false, "does_stretch": false},
      {"content": ")", "is_dark": false, "does_stretch": false},
      {"content": "/", "is_dark": false, "does_stretch": false}
    ],
    [
      {"content": "7", "is_dark": true, "does_stretch": false},
      {"content": "8", "is_dark": true, "does_stretch": false},
      {"content": "9", "is_dark": true, "does_stretch": false},
      {"content": "X", "is_dark": false, "does_stretch": false}
    ],
    [
      {"content": "4", "is_dark": true, "does_stretch": false},
      {"content": "5", "is_dark": true, "does_stretch": false},
      {"content": "6", "is_dark": true, "does_stretch": false},
      {"content": "-", "is_dark": false, "does_stretch": false}
    ],
    [
      {"content": "1", "is_dark": true, "does_stretch": false},
      {"content": "2", "is_dark": true, "does_stretch": false},
      {"content": "3", "is_dark": true, "does_stretch": false},
      {"content": "+", "is_dark": false, "does_stretch": false}
    ],
    [
      {"content": "0", "is_dark": true, "does_stretch": true},
      {"content": ".", "is_dark": true, "does_stretch": false},
      {"content": "=", "is_dark": false, "does_stretch": false}
    ],
  ];

  addElementToEquation(String element) {
    myEquation = myEquation + element;
    currentDouble = myEquation;
    setState(() {});

    print(myEquation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.save,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '12*(8+3)-3',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  currentDouble,
                  style: const TextStyle(
                      fontSize: 60, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
                children: myButtons
                    .map((line) => Row(
                        // boucle sur l'ensemble de la liste
                        children: line
                            // boucle sur la ligne (sous liste)
                            .map((element) => MonBouton(
                                  callBack: () => addElementToEquation(
                                      element["content"] as String),
                                  content: element["content"] as String,
                                  isDark: element["is_dark"] as bool,
                                  doesStretch: element["does_stretch"] as bool,
                                ))
                            .toList()))
                    .toList())
          ],
        ),
      ),
    );
  }
}
