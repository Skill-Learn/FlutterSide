import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_learn_client/auth/bloc/blocs.dart';
import 'package:skill_learn_client/auth/models/user.dart';
import 'package:skill_learn_client/auth/screens/components/components.dart';
import 'loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_learn_client/RouteGenerator.dart';

// Sign up page widget
// ignore: must_be_immutable
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
                  "assets/signup_solid.svg",
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
                  press: () {
                    print('$email $password');
                    // Add the signup consumer here
                    if (!email || !password || password.toString().length < 8) {
                      print("Invalid inputs");
                      return;
                    }
                    // the entry is valid register the event
                    final UserEvent event = UserSignUp(
                        User(id: null, email: email, password: password));
                    BlocProvider.of<AuthenticationBloc>(context).add(event);

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
