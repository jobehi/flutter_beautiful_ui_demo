import 'package:flutter/material.dart';
import 'package:myflutterapp/demo/component_2.dart';

class Component1 extends StatelessWidget {
  const Component1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/Lyon.jpeg',
                height: 200,
              ),
              const Text('Lyon'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Component2()));
                  },
                  child: const Text('Qui dit mieux ?'))
            ],
          ),
        ),
      ),
    );
  }
}
