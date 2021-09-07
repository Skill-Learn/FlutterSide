import 'package:skill_learn_client/auth/screens/components/components.dart';
import 'package:flutter/material.dart';
import 'package:skill_learn_client/RouteGenerator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold out the welcome screen
    // get the size of the screen
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome To Skill Learn!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              SvgPicture.asset("images/helping_hand.svg",
                  height: size.height * 0.25),
              SizedBox(height: size.height * 0.09),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.of(context).pushNamed(RouteGenerator.loginPage);
                },
              ),
              SizedBox(height: size.height * 0.01),
              RoundedButton(
                text: "SIGN UP",
                color: Colors.blue,
                textColor: Colors.black,
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
