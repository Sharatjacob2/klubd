import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:klarete/pages/basic_builder.dart';
import 'package:klarete/pages/clubs.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StarterDesign(2, "User"),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5.0, left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "BIO",
                        style: TextStyle(
                          fontSize: 27.3,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 35, top: 10),
                        child: const Text(
                          "I am an aspiring writer, artist, coder and designer. Currently I am exploring the limits of which I am capable of, and dipping my feet in different sectors similar to checking the temperature of a swimming pool.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "INTERESTS",
                        style: TextStyle(
                          fontSize: 27.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: StaggeredGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: [
                      InterestBloc(2, 1, "PUBLIC SPEAKING"),
                      InterestBloc(1, 1, "WRITING"),
                      InterestBloc(1, 1, "MUSIC"),
                      InterestBloc(1, 1, "CODING"),
                      InterestBloc(1, 1, "NATURE"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "CLUBS",
                style: TextStyle(
                  fontSize: 27.3,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("HACK CLUB", "hackClub"),
                  Clubber("ILLUMINATI", "illumin"),
                  Clubber("TINKHERHUB", "tinkerHub"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("TINKHERHUB", "tinkerHub"),
                  Clubber("HACK CLUB", "hackClub"),
                  Clubber("DSC", "dsc"),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 35),
                height: 60,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/enterBio');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    child: const Text(
                      "EDIT PROFILE",
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    )),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class InterestBloc extends StatelessWidget {
  late int g, h;
  late String i;
  InterestBloc(
    int m,
    int n,
    String o, {
    Key? key,
  }) : super(key: key) {
    g = m;
    h = n;
    i = o;
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: g,
      mainAxisCellCount: h,
      child: InterestUser(i),
    );
  }
}

// ignore: must_be_immutable
class InterestUser extends StatelessWidget {
  late String g;
  InterestUser(String s, {Key? key}) : super(key: key) {
    g = s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF65468D),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          g,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
