import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skill_learn_client/content/bloc_observer.dart';
// import 'package:skill_learn_client/content/screens/components/home_top_image.dart';
// import 'package:skill_learn_client/content/screens/components/video_tile.dart';
import 'package:skill_learn_client/content/screens/home_page.dart';
import 'package:skill_learn_client/content/screens/videos/videos.dart';
// import 'package:skill_learn_client/user/screens/creators_list.dart';
import 'package:skill_learn_client/user/screens/profile_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_learn_client/user/screens/subscription.dart';

import 'content/bloc_observer.dart';
// import 'content/bloc/blocs.dart';
import 'content/data_provider/article-data-provider.dart';
import 'content/repository/article-repository.dart';
// import 'content/screens/articles/article_list.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  final ArticleRepository articleRepository = ArticleRepository(ArticleDataProvider());

  runApp(SkillLearn(articleRepository: articleRepository),);
}

class SkillLearn extends StatefulWidget {

  final ArticleRepository articleRepository;
  

  SkillLearn({required this.articleRepository});  

  @override
  _SkillLearnState createState() => _SkillLearnState(articleRepository: articleRepository);
}

class _SkillLearnState extends State<SkillLearn> {

  ArticleRepository articleRepository;

  _SkillLearnState({required this.articleRepository});
  int _currentIndex = 0;

  @override
  void initState() {
    ArticleRepository articleRepository1 = this.articleRepository;
    super.initState();
  }
  
  
  final tabs = [
    ListView(
      // mainAxisSize: MainAxisSize.max,
      children: [
        // VideoTile(),
        // HomePage(articleRepository: widget.articleRepository,),
        SizedBox(
          height: 30,
        ),
      ],
    ),
    // HomePage(articleRepository: articleRepository,),
    Subscription(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    // final String message = "Message";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Skill Learn"),
        ),
        body: HomePage(articleRepository: articleRepository,),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, color: Colors.black,),
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


// class Articles extends StatelessWidget{
//   final SkillLearn widget;

//   const Articles({required this.widget});

//   @override
//   Widget build(BuildContext context) {
//     return RepositoryProvider.value(
//       value: this.widget.articleRepository ,
//       child: BlocProvider(create: (context) => ArticleBloc(articleRepository: this.widget.articleRepository)
//       ..add(ArticleLoad()),
//       child: ArticleList(),
//       ),);
//   }
// }