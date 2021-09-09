import 'package:flutter/material.dart';

class HomeTopImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 200,
                )
              ]
            ),
           
          )
        ],
      ),
    );
    
  }
  
}