import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Log Out"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignInScreen()));
        },
      ),
    );
  }
}
