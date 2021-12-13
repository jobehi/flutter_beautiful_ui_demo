import 'package:flutter/material.dart';

import 'services/dart_code_viewer.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key, this.componentNumber = 0}) : super(key: key);

  final componentNumber;

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  final codesList = [
    r'''
import 'package:flutter/material.dart';
import 'package:myflutterapp/demo/code_screen/code_screen.dart';
import 'package:myflutterapp/demo/component_2.dart';

class Component1 extends StatelessWidget {
  const Component1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CodeScreen()));
                },
                icon: const Icon(Icons.code))
          ],
      ),
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


''',
    r'''import 'package:flutter/material.dart';

import 'component_3.dart';

class Component2 extends StatelessWidget {
  const Component2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Colors.black,
                elevation: 10,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.9)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Lyon',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Image.asset(
                      'assets/images/Lyon.jpeg',
                      height: 200,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Component3()));
                  },
                  child: const Text('Qui dit mieux ?'))
            ],
          ),
        ),
      ),
    );
  }
}
''',
    r''' import 'package:flutter/material.dart';

import 'component_4.dart';

class Component3 extends StatelessWidget {
  const Component3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
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
''',
    r'''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'component_5.dart';

class Component4 extends StatelessWidget {
  const Component4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Component5()));
              },
              child: const Text('Qui dit mieux ?')),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Material(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 20,
                child: Container(
                  height: 200,
                  width: 300,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/Lyon.jpeg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Lyon',
                      style: GoogleFonts.indieFlower(
                          textStyle: const TextStyle(
                              fontSize: 60, color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 ''',
    r''' import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutterapp/demo/component_6/component_6.dart';

class Component5 extends StatelessWidget {
  const Component5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xfff12711), Color(0xfff5af19)])),
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
                Material(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 20,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Lyon.jpeg'),
                            fit: BoxFit.cover,
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
                            'Lyon',
                            style: GoogleFonts.indieFlower(
                                textStyle: const TextStyle(
                                    fontSize: 60, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Component6()));
                },
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
''',
    r'''import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
 '''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DartCodeViewer(
            codesList[widget.componentNumber - 1],
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
