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
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/man.png',
                height: 35,

              ),
              appBarItem('assets/crown.png', '12', Colors.yellow),
              appBarItem('assets/levels.png', '0', Colors.grey)
            ],
          )),
    );
  }

  // Create a function that returns the app bar item for saving time
  Widget appBarItem(String Image, String num,Color color){
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image, height: 30,),
        Text(num, style:TextStyle(color: Color),),
      ],
    )
  } 
}
