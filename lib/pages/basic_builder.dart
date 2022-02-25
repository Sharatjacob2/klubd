import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StarterDesign extends StatelessWidget {
  late int m;
  late String t;
  late bool user, home, choose;
  StarterDesign(int n, String s, {Key? key}) : super(key: key) {
    m = n;
    t = s;
    user = t == "User" || t == "Student" ? true : false;
    home = t == "home" ? true : false;
    choose = t == "choose" ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double Classheight = size.height;
    double Classwidth = size.width;

    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: user ? 248 : 195,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  m == 1 ? const Color(0xFF65468D) : const Color(0xFFDF005F),
                  Colors.black,
                ]),
          ),
        ),
        Positioned(
          top: 6,
          left: 0,
          child: Image(
            height: 143,
            image: m == 1
                ? const AssetImage("assets/klara1.png")
                : const AssetImage("assets/klaro1.png"),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: m == 1
                ? const AssetImage("assets/klara2.png")
                : const AssetImage("assets/klaro2.png"),
          ),
        ),
        Positioned.fill(
          bottom: -1,
          top: user ? 218 : 165,
          child: Container(
            width: 20,
            height: 30,
            decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
          ),
        ),
        Positioned(
          top: 53,
          left: 32,
          child: choose
              ? const Return()
              : home
                  ? KlareteButton("User")
                  : KlareteButton("home"),
        ),
        Positioned(
          top: 53,
          right: 32,
          child: choose
              ? const SizedBox(
                  width: 1,
                  height: 1,
                )
              : ((home || t == "User")
                  ? KlareteButton("Settings")
                  : KlareteButton("User")),
        ),
        KlareteCentreButton(t: t, user: user, home: home, choose: choose),
      ],
    );
  }
}

class KlareteCentreButton extends StatelessWidget {
  const KlareteCentreButton({
    Key? key,
    required this.t,
    required this.user,
    required this.home,
    required this.choose,
  }) : super(key: key);

  final String t;
  final bool user, home, choose;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            width: 110,
            height: 110,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: choose
                  ? Theme.of(context).primaryColor
                  : (!home ? Colors.white : Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(
                (home || user) ? 25 : 10,
              )),
            ),
            child: choose
                ? const Icon(
                    Icons.person,
                    size: 80.0,
                    color: Colors.white,
                  )
                : ((home || user)
                    ? ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(home ? 0 : 10.47),
                        ),
                        child: Image(
                          image: home
                              ? const AssetImage("assets/logo.png")
                              : const AssetImage("assets/Sharat.png"),
                          fit: BoxFit.cover,
                        ),
                      )
                    : Align(
                        alignment: Alignment.center,
                        child: Text(
                          t,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 23,
                          ),
                        ),
                      )),
          ),
          user
              ? Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: const [
                      Text(
                        "SHARAT JACOB",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "CSB, 3RD YEAR",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(
                  width: 1,
                  height: 1,
                ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class KlareteButton extends StatelessWidget {
  late String g;
  KlareteButton(String s, {Key? key}) : super(key: key) {
    g = s;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 58,
      child: TextButton(
        onPressed: () {
          g == "home"
              ? Navigator.pushNamed(context, '/homer')
              : (g == "User"
                  ? Navigator.pushNamed(context, '/userProfile')
                  : Navigator.pushNamed(context, '/notMade'));
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsetsDirectional.all(0),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: g == "home"
            ? ClipRRect(
                borderRadius: BorderRadius.circular(g == "home" ? 0 : 10),
                child: const Image(
                  image: AssetImage("assets/logo2.png"),
                  fit: BoxFit.fill,
                ),
              )
            : Icon(
                g == "User" ? Icons.person : Icons.settings,
                size: 45.0,
                color: Theme.of(context).primaryColor,
              ),
      ),
    );
  }
}

class Return extends StatelessWidget {
  const Return({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xFFAA064C),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
        child: const Icon(
          Icons.arrow_back,
          size: 34.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
