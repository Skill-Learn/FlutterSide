import 'package:flutter/material.dart';
import 'package:skill_learn_client/content/screens/components/video_tile.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 2,
          child: Container(
            height: 500,
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 51,
                bottom: TabBar(
                  indicatorWeight: 5.0,
                  automaticIndicatorColorAdjustment: true,
                  tabs: [
                    Tab(
                      child: Text(
                        "VIDEOS",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "ARTICLES",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                 VideoList(),
                 ArticleList(),
                ],
              ),
            ),
          ),
        );
  }
}

class VideoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () async {
              final result = await Navigator.pushNamed( ctx, "/video_detail");
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.black, width: 1.0, style: BorderStyle.solid)),
              child: Column(
                children: [
                  VideoTile(),
                  Text(
                    "Title of the video",
                  ),
                  Text(
                    "Teacher's name",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
class ArticleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid)),
            child: Column(
              children: [
                VideoTile(),
                Text(
                  "Title of the Article",
                ),
                Text(
                  "Teacher's name",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          );
        });
  }
}
