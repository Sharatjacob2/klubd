import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black12,
        padding: const EdgeInsets.all(20),
        child: const Text(
          "*You can enter as an external viewer and later create an MECian account. So feel free to hop right in!",
          textAlign: TextAlign.center,
        ),
      ),
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
            "HELLO, THERE.",
            style: TextStyle(
              fontSize: 40.95,
              color: Colors.black,
            ),
          ),
          RichText(
            text: const TextSpan(
              text: "WELCOME TO ",
              style: TextStyle(
                fontSize: 21,
                fontFamily: 'Jost',
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "KLARETE",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Jost',
                    color: Color(0xFFAA064C),
                  ),
                ),
                TextSpan(
                  text: ".",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Jost',
                    color: Colors.black,
                  ),
                ),
              ],
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
                WelcomeButton("ENTER AS EXTERNAL", 'homer', 1),
                const SizedBox(
                  width: 10,
                ),
                WelcomeButton("ENTER AS MECIAN", 'logIn', 2),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class WelcomeButton extends StatelessWidget {
  late String g, h;
  late int n;
  WelcomeButton(
    String s,
    String t,
    int m, {
    Key? key,
  }) : super(key: key) {
    g = s;
    h = t;
    n = m;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 184,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/$h');
        },
        style: ElevatedButton.styleFrom(
          primary: n == 1 ? Colors.black : const Color(0xFFAA064C),
        ),
        child: Text(
          g,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 21,
            color: n == 2 ? const Color(0xFFFAFAFA) : Colors.white,
          ),
        ),
      ),
    );
  }
}
