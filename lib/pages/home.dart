import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/basic_builder.dart';
import 'package:klarete/pages/clubs.dart';
import 'package:klarete/pages/special_widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0XFFFAFAFA),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StarterDesign(2, "home"),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                       Text(
                        "Search up people, clubs, classes and.. ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                       Icon(
                        Icons.search,
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  height: 110,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.47),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, '/events');
                    },
                    child: const Text(
                      "EVENTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0),
                  child: const Text(
                    "CLASSES",
                    style: TextStyle(
                      fontSize: 27.3,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SquareBlock("CSA"),
                      SquareBlock("CSB"),
                      SquareBlock("EBE"),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SquareBlock("ECA"),
                      SquareBlock("ECB"),
                      PlusBlock('classes'),
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0),
                  child: const Text(
                    "CLUBS",
                    style: TextStyle(
                      fontSize: 27.3,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    ClubButton(h: "iedc"),
                    ClubButton(h: "hackClub"),
                    ClubButton(h: "dsc"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const ClubButton(h: "illumin"),
                    const ClubButton(h: "tinkerHub"),
                    PlusBlock('clubs'),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
