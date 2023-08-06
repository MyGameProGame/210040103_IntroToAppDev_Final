import 'package:firebase_signin/reusable_widgets/reusable_widgets.dart';
import 'package:firebase_signin/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.pinkAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Column(
            children: [
              LogoWidget('assets/images/logo1.png'),
              SizedBox(
                height: 40,
              ),
              reusableTextField("Enter UserName", Icons.person_4_sharp, false,
                  _emailTextController),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),
              SizedBox(height: 30),
              SignInSignUpButton(context, true, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
              signUpOption(),
              // reusableTextField("Enter Password Again", Icons.lock_outline,
              //     true, _passwordTextController),
              // SizedBox(height: 30),
              // Text('Create anothe widget'),
            ],
          ),
        )),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't Have an Account",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up Now",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
