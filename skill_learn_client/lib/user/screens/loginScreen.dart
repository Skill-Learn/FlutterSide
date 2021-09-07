import 'dart:convert';
import 'dart:async';
import 'package:';
import 'package:skill_learn_client/user/components/components_login_register/AlreadyHaveAnAccountCheck.dart';
import 'package:skill_learn_client/user/components/components_login_register/Background.dart';
import 'package:skill_learn_client/user/components/components_login_register/RoundedButton.dart';
import 'package:skill_learn_client/user/components/components_login_register/RoundedInputField.dart';
import 'package:skill_learn_client/user/components/components_login_register/RoundedPasswordField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

import '../main.dart';

class Login extends StatelessWidget {
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
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "images/signin_solid.svg",
                height: size.height * 0.15,
              ),
              SizedBox(height: size.height * 0.03),
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
                text: "LOGIN",
                press: () {
                  print('$email $password');
                  login(email, password);
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.of(context).pushNamed(RouteGenerator.signupPage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
