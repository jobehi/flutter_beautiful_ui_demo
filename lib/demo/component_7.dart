import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutterapp/demo/component_6/full_screen.dart';

class Component7 extends StatefulWidget {
  const Component7({Key? key}) : super(key: key);

  @override
  State<Component7> createState() => _Component7State();
}

class _Component7State extends State<Component7> {
  List<Color> colorList = [
    Colors.red,
    Colors.orange,
    Colors.purple,
    Colors.yellow
  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];
  int index = 0;
  Color bottomColor = Colors.red;
  Color topColor = Colors.yellow;
  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 10), () {
      setState(() {
        bottomColor = Colors.orange;
      });
    });
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      onEnd: () {
        setState(() {
          index = index + 1;

          bottomColor = colorList[index % colorList.length];
          topColor = colorList[(index + 1) % colorList.length];
        });
      },
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/Lyon.jpeg'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
              begin: begin, end: end, colors: [bottomColor, topColor])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FullScreenImage()));
                  },
                  child: Center(
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.5)),
                          child: Center(
                            child: Text('Lyon',
                                style: GoogleFonts.indieFlower(
                                    textStyle: const TextStyle(
                                        fontSize: 60, color: Colors.black))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: Center(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Qui dit mieux ?',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
      ),
    );
  }
}
