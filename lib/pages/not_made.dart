import 'package:flutter/material.dart';
import 'package:klarete/pages/temporary.dart';

class NotMade extends StatelessWidget {
  const NotMade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sorry! This page has not been created yet. I am pretty sure it will be soon. In the meantime, kindly go back to the homepage.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          NextButton("Home", 'homer'),
        ],
      ),
    ));
  }
}
