import 'package:flutter/material.dart';

class EditName extends StatelessWidget {
  const EditName({
    Key? key,
    required this.fullName,
  }) : super(key: key);

  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.horizontal(
                start: Radius.circular(0), end: Radius.circular(10)),
            color: Colors.black12,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
            child: Text(
              "Name",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: fullName,
              ),
              enabled: false,
              textAlign: TextAlign.left,
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_sharp,
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }
}
