import 'package:skill_learn_client/content/bloc/articles/article_bloc.dart';
import 'package:skill_learn_client/content/bloc/articles/article_event.dart';
import 'package:skill_learn_client/content/models/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'article_list.dart';

class AddUpdateCourse extends StatefulWidget {
  static const routeName = 'courseAddUpdate';
  final Article args;

  AddUpdateCourse({required this.args});
  @override
  _AddUpdateCourseState createState() => _AddUpdateCourseState();
}

class _AddUpdateCourseState extends State<AddUpdateCourse> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, dynamic> _article = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${"Add New Article"}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                  initialValue:
                     this.widget.args.title,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter title';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Title'),
                  onSaved: (value) {
                    setState(() {
                      this._article["code"] = value;
                    });
                  }),
              TextFormField(
                  initialValue:
                      widget.args.description,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter course title';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Course Title'),
                  onSaved: (value) {
                    this._article["title"] = value;
                  }),
              TextFormField(
                  initialValue: widget.args.content,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter course ects';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Course ECTS'),
                  onSaved: (value) {
                    setState(() {
                      if (value != null) {
                        this._article["ects"] = int.parse(value);
                      }
                    });
                  }),
              TextFormField(
                  initialValue:
                      widget.args.creator ,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter course description';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Course Description'),
                  onSaved: (value) {
                    setState(() {
                      this._article["description"] = value;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form != null && form.validate()) {
                      form.save();
                      final ArticleEvent event = 
                           ArticleCreate(
                              Article(
                                title: this._article["title"],
                                description: this._article["description"],
                                content: this._article["ects"],
                                creator: this._article["creator"],
                                date: this._article["date"], 
                                id: null,
                              ),
                            );
                      BlocProvider.of<ArticleBloc>(context).add(event);
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          ArticleList().routname, (route) => false);
                    }
                  },
                  label: Text('SAVE'),
                  icon: Icon(Icons.save),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


