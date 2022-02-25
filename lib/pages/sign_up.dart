import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 84,
            ),
            const Image(
              width: 97,
              height: 97,
              image: AssetImage('assets/logo.png'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "CREATE YOUR ACCOUNT",
              style: TextStyle(
                fontSize: 27.3,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  Signer("Username", "SHARAT JACOB JACOB"),
                  Signer("Email ID", "sharatjacob2@gmail.com"),
                  Signer("Password", "*************"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              width: 300,
              height: 58,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.47),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/enterBio');
                },
                child: const Text(
                  "I AM READY!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 130,
                  color: Colors.black,
                ),
                const Text(
                  " OR ",
                  style: TextStyle(fontSize: 14),
                ),
                Container(
                  height: 2,
                  width: 130,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              width: 300,
              height: 58,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.47),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/enterBio');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "CREATE AN ACCOUNT WITH ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/google.png'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Signer extends StatelessWidget {
  late String g, h;
  Signer(
    String s,
    String t, {
    Key? key,
  }) : super(key: key) {
    g = s;
    h = t;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          g,
          style: const TextStyle(fontSize: 21),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          margin: const EdgeInsets.only(bottom: 10),
          width: 300,
          height: 48,
          decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              h,
              style: const TextStyle(fontSize: 18, color: Colors.black45),
            ),
          ),
        ),
      ],
    );
  }
}
