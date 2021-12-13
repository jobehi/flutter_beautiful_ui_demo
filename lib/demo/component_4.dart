import 'package:flutter/material.dart';
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
