import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.account_circle_rounded,
              size: 200, color: Colors.blueGrey[200]),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.change_circle_rounded,
                      size: 30, color: Colors.blue[300]),
                ))),
      ],
    );
  }
}
