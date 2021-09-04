import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          spacer(40),
          Divider(),
          ProfilePicture(),
          Divider(),
          AccountDetails(),
        ],
      ),
    );
  }
}

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  Row editName(String fullName) {
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

  Row editEmail(String mail) {
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
              "Email",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: mail,
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

  Row passwordReset(String pw) {
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

  Row logOut() {
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

  @override
  Container build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          editName("James Bond"),
          spacer(20),
          editEmail("jamesbond007@bond.com"),
          // spacer(20),
          passwordReset("123456789"),
          // spacer(20),
          logOut()
        ],
      ),
    );
  }
}

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
              size: 200, color: Colors.deepOrange[200]),
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

SizedBox spacer(double space) => SizedBox(height: space);
