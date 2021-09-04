import 'package:flutter/material.dart';
import 'package:skill_learn_client/content/screens/components/home_top_image.dart';
import 'package:skill_learn_client/content/screens/components/video_tile.dart';
import 'package:skill_learn_client/content/screens/home_page.dart';

void main() => runApp(SkillLearn());

class SkillLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Skill Learn"),
        ),
        body: ListView(
          // mainAxisSize: MainAxisSize.max,
          children: [
            // VideoTile(),
            HomePage(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueAccent,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Some Page"),
                Text("Some Page"),
                Text("Some Page"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
