import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({
    Key? key,
  }) : super(key: key);

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
                  "Log Out",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Expanded(child: SizedBox()),
                Icon(
                  Icons.logout,
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
