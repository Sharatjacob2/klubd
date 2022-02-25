import 'package:flutter/material.dart';
import 'package:klarete/pages/sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          // width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 124,
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
                "LOG IN. NOW. PLEASE.",
                style: TextStyle(
                  fontSize: 27.3,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: <Widget>[
                    // Signer("Username/Email ID", "sharatjacob2@gmail.com"),
                    // Signer("Password", "*************"),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Username/Email ID",
                        style: const TextStyle(fontSize: 21),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 300,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(),
                      ),

                      //  Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Text(
                      //     "sharatjacob2@gmail.com",
                      //     style: const TextStyle(
                      //         fontSize: 18, color: Colors.black45),
                      //   ),
                      // ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: const TextStyle(fontSize: 21),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 300,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextField(
                        controller: emailController,
                      ),

                      //  Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Text(
                      //     "sharatjacob2@gmail.com",
                      //     style: const TextStyle(
                      //         fontSize: 18, color: Colors.black45),
                      //   ),
                      // ),
                    ),
                    // Container(
                    //   width: 300,
                    //   height: 48,
                    //   child: TextField(
                    //     controller: emailController,
                    //     // decoration: InputDecoration(

                    //     // ),
                    //   ),
                    // )
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
                    "LOG IN",
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
                        "LOG IN WITH ",
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
      ),
    );
  }
}
