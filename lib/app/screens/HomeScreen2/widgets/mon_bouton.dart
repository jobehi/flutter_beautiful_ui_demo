import 'package:flutter/material.dart';

class MonBouton extends StatelessWidget {
  const MonBouton({
    Key? key,
    required this.content,
    this.isDark = true,
    this.doesStretch = false,
    required this.callBack,
  }) : super(key: key);

  final String content;
  final bool isDark;
  final bool doesStretch;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: doesStretch ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            callBack();
          },
          splashColor: Colors.red,
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(15),
              color: isDark ? Colors.black : Colors.white,
            ),
            height: 70,
            child: Center(
              child: Text(
                content,
                style: TextStyle(
                    color: isDark ? Colors.white : Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
