import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:klarete/pages/basic_builder.dart';
import 'package:klarete/pages/clubs.dart';
import 'package:klarete/pages/user_profile.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              StarterDesign(2, "Student"),
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
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("IEDC", "iedc"),
                  Clubber("ILLUMINATI", "illumin"),
                  Clubber("DSC MEC", "dsc"),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("HACK CLUB", "hackClub"),
                  Clubber("IEDC", "iedc"),
                  Clubber("TINKHERHUB", "tinkerHub"),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "MUTUAL CLUBS",
                style: TextStyle(
                  fontSize: 27.3,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Clubber("HACK CLUB", "hackClub"),
                      Clubber("IEDC", "iedc"),
                      Clubber("TINKHERHUB", "tinkerHub"),
                    ],
                  ),
                ],
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
