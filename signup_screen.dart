import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widgets.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                  height: 40,
                ),
                reusableTextField("Enter Email Id", Icons.email_outlined, false,
                    _passwordTextController),
                SizedBox(
                  height: 40,
                ),
                reusableTextField(
                    "Enter Password", Icons.lock, false, _emailTextController),
                SizedBox(
                  height: 40,
                ),
                SignInSignUpButton(context, false, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
              ],
            ),
          ))),
    );
  }
}
