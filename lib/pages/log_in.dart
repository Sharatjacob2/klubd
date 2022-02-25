import 'package:flutter/material.dart';
import 'package:klarete/pages/welcome.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(
            width: 97,
            height: 97,
            image: AssetImage('assets/logo.png'),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "LET'S GET YOU INSIDE.",
            style: TextStyle(
              fontSize: 27.3,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                WelcomeButton("LOG IN", 'signIn', 1),
                const SizedBox(
                  width: 10,
                ),
                WelcomeButton("SIGN UP", 'signUp', 2),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
