import 'dart:convert';

import 'package:skill_learn_client/components/AlreadyHaveAnAccountCheck.dart';
import 'package:skill_learn_client/components/Background.dart';
import 'package:skill_learn_client/components/RoundedButton.dart';
import 'package:skill_learn_client/components/RoundedInputField.dart';
import 'package:skill_learn_client/components/RoundedPasswordField.dart';
import 'package:skill_learn_client/screens/Login.dart';
import 'package:skill_learn_client/screens/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

// Sign up page widget
class Signup extends StatelessWidget {
  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "SIGNUP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "images/signup_solid.svg",
                  height: size.height * 0.15,
                ),
                RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {
                    email = value;
                  },
                ),
                RoundedPasswordField(
                  onChanged: (value) {
                    password = value;
                  },
                ),
                RoundedButton(
                  text: "SIGNUP",
                  press: () async {
                    print('$email $password');
                    await signup(email, password);
                    Navigator.of(context).pushNamed(RouteGenerator.landingPage);
                  },
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Login();
                        },
                      ),
                    );
                  },
                )
              ]),
        ),
      ),
    );
  }
}
