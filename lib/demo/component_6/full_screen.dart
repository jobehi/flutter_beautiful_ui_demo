import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  const FullScreenImage({Key? key}) : super(key: key);

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
          leading: BackButton(
            color: Colors.orange,
          ),
        ),
        body: const Center(
          child: Hero(
            tag: 'Image_1',
            child: Material(
              child: Image(
                image: AssetImage(
                  'assets/images/Lyon.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
