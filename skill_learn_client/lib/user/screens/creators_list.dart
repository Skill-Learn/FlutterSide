import 'package:flutter/material.dart';
import 'package:skill_learn_client/content/bloc/creator_bloc.dart';
import 'package:skill_learn_client/content/bloc/creator_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    Map<String, List<Map<String, String?>>> CurrentUser = {
      "subscriptions": [
        {"creator1": null},
        {"creator2": "free"},
        {"creator3": "pro"},
        {"creator4": "free"},
        {"creator5": null}
      ]
    };

    return BlocBuilder<CreatorBloc, CreatorState>(
      builder: (_, state) {
        if (state is CreatorOperationFailure) {
          return Text('Could not do creator operation');
        }

        if (state is CreatorOperationSuccess) {
          final creators = state.creators;

          return ListView.builder(
              itemCount: creators.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1.0, horizontal: 4.0),
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color(0xFF42A5F5),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50)),
                    child: ListTile(
                      onTap: () {
                        String? subType =
                            subscriptionType(CurrentUser, creators, index);
                        Navigator.of(context).pushNamed("/CreatorsDetail",
                            // CreatorsDetail.routeName
                            arguments: [creators.elementAt(index), subType]);
                      },
                      // Navigator.of(context).pushNamed(
                      //     CreatorsDetail.routeName,
                      //     arguments: creators.elementAt(index));
                      title: Text(
                        '${creators.elementAt(index).username}',
                        style: TextStyle(color: Color(0xFF42A5F5)),
                      ),
                      leading: FlutterLogo(),
                      trailing: Container(
                        child: ElevatedButton(
                          child: Text("Subscription"),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              "/subscription",
                              arguments: creators.elementAt(index),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
              });
        }
        return CircularProgressIndicator();
      },
    );

    // return ListView.builder(
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
    //         child: Card(
    //           color: Colors.white,
    //           shape: RoundedRectangleBorder(
    //               side: BorderSide(
    //                   color: Color(0xFF42A5F5),
    //                   width: 1,
    //                   style: BorderStyle.solid),
    //               borderRadius: BorderRadius.circular(50)),
    //           child: ListTile(
    //             onTap: () {},
    //             title: Text(
    //               "Flutter is the easiest app platform",
    //               style: TextStyle(color: Color(0xFF42A5F5)),
    //             ),
    //             leading: FlutterLogo(),
    //           ),
    //         ),
    //       );
    //     });
  }
}

String? subscriptionType(var currentUser, var creators, int index) {
  for (int i = 0; i < ((currentUser["subscriptions"])!.length); i++) {
    if ((currentUser["subscriptions"])!.elementAt(i).keys.first ==
        creators.elementAt(index).username) {
      return (currentUser["subscriptions"])!
          .elementAt(i)[creators.elementAt(index).username];
    }
  }
  return null;
  // Navigator.of(context).pushNamed(
  //     CreatorsDetail.routeName,
  //     arguments: creators.elementAt(index));
}
