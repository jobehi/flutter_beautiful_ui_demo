import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.content,
    this.doesStretch = false,
    this.isDark = true,
  }) : super(key: key);

  final String content;
  final bool doesStretch;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      flex: doesStretch ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {},
          splashColor: Colors.red,
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(
                  color: isDark ? Colors.white : Colors.black, width: 1),
              borderRadius: BorderRadius.circular(15),
              color: isDark ? Colors.black : Colors.white,
            ),
            height: screenWidth / 7,
            child: Center(
              child: Text(
                content,
                style: TextStyle(color: isDark ? Colors.white : Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
