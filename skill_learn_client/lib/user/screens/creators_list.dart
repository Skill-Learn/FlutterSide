import 'package:flutter/material.dart';

class CreatorsList extends StatefulWidget {
  @override
  _CreatorsListState createState() => _CreatorsListState();
}

class _CreatorsListState extends State<CreatorsList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color(0xFF42A5F5),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {},
                title: Text(
                  "Flutter is the easiest app platform",
                  style: TextStyle(color: Color(0xFF42A5F5)),
                ),
                leading: FlutterLogo(),
              ),
            ),
          );
        });
  }
}
