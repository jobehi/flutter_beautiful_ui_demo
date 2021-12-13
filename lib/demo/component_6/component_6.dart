import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutterapp/demo/code_screen/code_screen.dart';
import 'package:myflutterapp/demo/component_6/full_screen.dart';

class Component6 extends StatefulWidget {
  const Component6({Key? key}) : super(key: key);

  @override
  State<Component6> createState() => _Component6State();
}

class _Component6State extends State<Component6> {
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

  Shader linearGradient = const LinearGradient(
    colors: <Color>[Colors.orange, Colors.white],
  ).createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

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
          gradient: LinearGradient(
              begin: begin, end: end, colors: [bottomColor, topColor])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CodeScreen(
                            componentNumber: 6,
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FullScreenImage()));
                  },
                  child: Material(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 20,
                    child: Stack(
                      children: [
                        const SizedBox(
                          height: 200,
                          width: 300,
                          child: Hero(
                            tag: 'Image_1',
                            child: Material(
                              child: Image(
                                image: AssetImage('assets/images/Lyon.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 300,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Color(0x7000B4DB),
                                    Color(0x700083B0),
                                  ],
                                  stops: [
                                    0.0,
                                    1.0
                                  ])),
                        ),
                        SizedBox(
                          height: 200,
                          width: 300,
                          child: Center(
                            child: Text(
                              'LYON',
                              style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                letterSpacing: 20,
                                fontSize: 60,
                                foreground: Paint()..shader = linearGradient,
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
