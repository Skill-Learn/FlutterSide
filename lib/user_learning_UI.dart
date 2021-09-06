import 'package:flutter/material.dart';

class userlearning extends StatefulWidget {
  int _currentIndex=0;
  @override
  _userlearningState createState() => _userlearningState();
}

class _userlearningState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          // BottomNavigationBarItem(
          //   icon: Image.asset('assets/levels.jfif'),
          //   title: Container(),
          // ),
          // BottomNavigationBarItem(
          //   icon: Image.asset('assets/man.png'),
          //   title: Container(),
          // ),
          // BottomNavigationBarItem(
          //   icon: Image.asset('assets/gem.png'),
          //   title: Container(),
          // ),
          // BottomNavigationBarItem(
          //   icon: Image.asset('assets/levels.jfif'),
          //   title: Container(),
          // ),
          // BottomNavigationBarItem(
          //   icon: Image.asset('assets/levels.jfif'),
          //   title: Container(),
          // ),
          navBarItem('assets/level.jfif', 'assets/levels.jfif'),
          navBarItem('assets/gem.jfif', 'assets/gem.jfif'),
          navBarItem('assets/man.png', 'assets/man.png'),
         

        ],
        onTap: (index){
          setState(() {
              _currentIndex=index;
          });
        }
      ),
    );
  }

  BottomNavigationBarItem navBarItem(String image,String activeImage)
  {
    return BottomNavigationBarItem(
      icon: Image.asset('assets/man.png',height: 30,)
      title: Container(),
      activeIcon: Image.asset(activeImage),
      );
  } 
}
