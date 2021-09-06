import 'package:flutter/material.dart';
// import 'package:skill_learn_client/content/screens/components/home_top_image.dart';
// import 'package:skill_learn_client/content/screens/components/video_tile.dart';
import 'package:skill_learn_client/content/screens/home_page.dart';
import 'login.dart';

void main() => runApp(SkillLearn());

class SkillLearn extends StatefulWidget {
  @override
  _SkillLearnState createState() => _SkillLearnState();
}

class _SkillLearnState extends State<SkillLearn> {
  int _currentIndex = 0;

  final tabs = [
    ListView(
      // mainAxisSize: MainAxisSize.max,
      children: [
        // VideoTile(),

        // HomePage(),
        SizedBox(
          height: 30,
        ),
      ],
    ),
    Center(
      child: Text("Second Page"),
    ),
    Center(
      child: Text("Profile Page"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Skill Learn"),
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Creators",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          onTap: (index) => {
            setState(() {
              _currentIndex = index;
            })
          },
        ),
      ),
    );
  }
}
