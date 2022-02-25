import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

import 'basic_builder.dart';

class ClubProfile extends StatelessWidget {
  const ClubProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              StarterDesign(2, "IEDC"),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5.0, left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "DESCRIPTION",
                        style: TextStyle(
                          fontSize: 27.3,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 35, top: 10),
                        child: const Text(
                          "IEDC MEC strives to develop, nurture and sustain the entrepreneurship culture in MEC. It is funded by the Kerala Startup Mission (KSUM) and acts as a pre-incubator to help students develop their ideas into scalable startup ventures.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              const Text(
                "CORE TEAM",
                style: TextStyle(
                  fontSize: 27.3,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ClubMember("CEO", "SHARAT JACOB", "Sharat", true),
              ClubMember("COO", "MUHAMMED RAZEEN", "Adithya", false),
              ClubMember("CFO", "NIKITA MENON", "Nikita", true),
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
class ClubMember extends StatelessWidget {
  late String position, name, image;
  late bool k;
  ClubMember(
    String p,
    n,
    i,
    bool dir, {
    Key? key,
  }) : super(key: key) {
    k = dir;
    position = p;
    name = n;
    image = i;
  }

  @override
  Widget build(BuildContext context) {
    return k
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        height: 55,
                        child: Center(
                          child: Text(
                            position,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      bottom: 10,
                      left: 20,
                      right: 20,
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 140,
                height: 140,
                margin: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/studentProfile');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      )),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage("assets/" + image + ".png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                margin: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/studentProfile');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    primary: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage("assets/" + image + ".png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: 140,
                height: 140,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        height: 55,
                        child: Center(
                          child: Text(
                            position,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      bottom: 10,
                      left: 20,
                      right: 20,
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
