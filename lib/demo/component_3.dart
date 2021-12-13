import 'package:flutter/material.dart';

import 'code_screen/code_screen.dart';
import 'component_4.dart';

class Component3 extends StatelessWidget {
  const Component3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CodeScreen(
                          componentNumber: 3,
                        )));
              },
              icon: const Icon(Icons.code))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                elevation: 10,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.9),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Lyon.jpeg',
                      height: 200,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Lyon',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Component4()));
                  },
                  child: const Text('Qui dit mieux ?'))
            ],
          ),
        ),
      ),
    );
  }
}
