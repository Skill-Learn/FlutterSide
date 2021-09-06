import 'package:flutter/material.dart';

class Levels extends StatefulWidget {
  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Image.asset(
            'assets/levels.png',
            height: 35,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/crown.png',
                height: 30,
              ),
              Text('12'),
            ],
          )
        ],
      )),
    );
  }
}
