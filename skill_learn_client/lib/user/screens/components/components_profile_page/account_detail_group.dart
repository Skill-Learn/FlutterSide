import 'package:flutter/material.dart';
import 'package:skill_learn_client/user/screens/components/components_profile_page/edit_email.dart';
import 'package:skill_learn_client/user/screens/components/components_profile_page/edit_name.dart';
import 'package:skill_learn_client/user/screens/components/components_profile_page/password_reset.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Container build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          EditName(fullName: "James Bond"),
          EditEmail(mail: "jamesbond007@bond.com"),
          PasswordReset(pw: "123456789"),
        ],
      ),
    );
  }
}
