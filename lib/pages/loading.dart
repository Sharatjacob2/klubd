import 'dart:async';

import 'package:flutter/material.dart';
import 'package:klarete/pages/welcome.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  // ignore: must_call_super
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Welcome())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            
            image: AssetImage('assets/SplashScreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            children: const [
              Image(
                 width: 97,
            height: 97,
                image: AssetImage('assets/logo.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
