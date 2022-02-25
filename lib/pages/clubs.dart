import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'basic_builder.dart';

class Clubs extends StatelessWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              StarterDesign(2, "CLUBS"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Area of Focus: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 120,
                    child: Card(
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "UI/UX",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Clubber("IEDC", "iedc"),
                        Clubber("ILLUMINATI", "illumin"),
                        Clubber("DSC MEC", "dsc"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Clubber("HACK CLUB", "hackClub"),
                        Clubber("IEDC", "iedc"),
                        Clubber("TINKHERHUB", "tinkerHub"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Clubber("DSC MEC", "dsc"),
                        Clubber("HACK CLUB", "hackClub"),
                        Clubber("IEDC", "iedc"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Clubber("TINKHERHUB", "tinkerHub"),
                        Clubber("ILLUMINATI", "illumin"),
                        Clubber("DSC MEC", "dsc"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Clubber("HACK CLUB", "hackClub"),
                        Clubber("IEDC", "iedc"),
                        Clubber("ILLUMINATI", "illumin"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Clubber extends StatelessWidget {
  late String g, h;
  Clubber(
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClubButton(h: h),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 100,
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          child: Text(
            g,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: Colors.black),
          ),
        )
      ],
    );
  }
}

class ClubButton extends StatelessWidget {
  const ClubButton({
    Key? key,
    required this.h,
  }) : super(key: key);

  final String h;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 90,
      height: 90,
      child: ElevatedButton(
        onPressed: () {
          h != "Sharat"
              ? Navigator.pushNamed(context, '/clubProfile')
              : Navigator.pushNamed(context, '/studentProfile');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsetsDirectional.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          primary: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.47),
          child: Image(
            image: AssetImage("assets/" + h + ".png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
