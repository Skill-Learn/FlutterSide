import 'package:flutter/material.dart';

class VideoTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/video placeholder.png'
            ),
          ),
        ],
      ),
    );
  }
  
}