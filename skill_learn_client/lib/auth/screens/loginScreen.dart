import 'package:skill_learn_client/auth/screens/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_learn_client/RouteGenerator.dart';

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
                  // login(email, password);
                  // add the login consumer here
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
