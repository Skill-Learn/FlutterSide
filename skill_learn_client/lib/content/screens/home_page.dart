import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_learn_client/content/screens/components/video_detail.dart';
import 'package:skill_learn_client/content/screens/components/video_tile.dart';

import 'articles/article_list.dart';
// import 'package:sticky_headers/sticky_headers/widget.dart';


import 'package:skill_learn_client/content/bloc/blocs.dart';
import 'package:skill_learn_client/content/bloc_observer.dart';
import 'package:skill_learn_client/content/data_provider/article-data-provider.dart';
import 'package:skill_learn_client/content/repository/article-repository.dart';

class HomePage extends StatefulWidget {
  final ArticleRepository articleRepository;

  HomePage({required this.articleRepository});

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
                  indicatorWeight: 3.0,
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
                 Articles(widget: widget,),
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
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (_) => VideoDetail()))},
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
// class ArticleList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: 20,
//         itemBuilder: (BuildContext ctx, index) {
//           return Container(
//             clipBehavior: Clip.hardEdge,
//             margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(
//                     color: Colors.black, width: 1.0, style: BorderStyle.solid)),
//             child: Column(
//               children: [
//                 VideoTile(),
//                 Text(
//                   "Title of the Article",
//                 ),
//                 Text(
//                   "Teacher's name",
//                   style: TextStyle(fontSize: 10),
//                 ),
//               ],
//             ),
//           );
//         });
//   }
// }
class Articles extends StatelessWidget{
  final HomePage widget;

  const Articles({required this.widget});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: this.widget.articleRepository ,
      child: BlocProvider(create: (context) => ArticleBloc(articleRepository: this.widget.articleRepository)
      ..add(ArticleLoad()),
      child: ArticleList(),
      ),);
  }
}