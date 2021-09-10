import 'package:flutter/material.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({
    Key? key,
    required this.pw,
  }) : super(key: key);

  final String pw;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: MaterialButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              children: [
                Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Expanded(child: SizedBox()),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
