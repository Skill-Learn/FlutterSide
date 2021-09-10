import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:skill_learn_client/user/screens/components/components_profile_page/logout.dart';
import 'package:skill_learn_client/user/screens/components/components_profile_page/profile_picture.dart';
import 'package:skill_learn_client/user/screens/components/components_profile_page/account_detail_group.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          ProfilePicture(),
          Divider(),
          AccountDetails(),
          LogOut(),
        ],
      ),
    );
  }
}
