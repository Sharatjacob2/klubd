import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/choose_class.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';

class ChooseClubs extends StatefulWidget {
  const ChooseClubs({Key? key}) : super(key: key);

  @override
  _ChooseClubsState createState() => _ChooseClubsState();
}

class _ChooseClubsState extends State<ChooseClubs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double Classheight = size.height;
    double Classwidth = size.width;

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LongButton("INITIATIVES", 'chooseInitiatives', 1),
            SkipAll(),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: ColorfulSafeArea(
        color: const Color(0xFF65468D),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StarterDesign(1, "choose"),
              Container(
 margin:
                    EdgeInsets.symmetric(horizontal: (Classwidth - 295) / 2),                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Select your clubs:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClubSelect("IEDC", "iedc"),
                        ClubSelect("ILLUMINATI", "illumin"),
                        ClubSelect("DSC MEC", "dsc"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClubSelect("HACK CLUB", "hackClub"),
                        ClubSelect("IEDC", "iedc"),
                        ClubSelect("TINKHERHUB", "tinkerHub"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClubSelect("DSC MEC", "dsc"),
                        ClubSelect("HACK CLUB", "hackClub"),
                        ClubSelect("IEDC", "iedc"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClubSelect("TINKHERHUB", "tinkerHub"),
                        ClubSelect("ILLUMINATI", "illumin"),
                        ClubSelect("DSC MEC", "dsc"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClubSelect("HACK CLUB", "hackClub"),
                        ClubSelect("IEDC", "iedc"),
                        ClubSelect("ILLUMINATI", "illumin"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ClubSelect extends StatefulWidget {
  late String g, h;
  ClubSelect(
    String s,
    String t, {
    Key? key,
  }) : super(key: key) {
    g = s;
    h = t;
  }

  @override
  State<ClubSelect> createState() => _ClubSelectState();
}

class _ClubSelectState extends State<ClubSelect> {
  bool press = true;

  @override
  Widget build(BuildContext context) {
      


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: ElevatedButton(
            onPressed: () => {
              setState(() {
                press = !press;
              })
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsetsDirectional.all(0),
                primary: press ? Colors.white : Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            child: press
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage("assets/" + widget.h + ".png"),
                      fit: BoxFit.cover,
                    ),
                  )
                : const Icon(
                    Icons.done,
                    size: 40,
                    color: Colors.white,
                  ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          width: 88,
          height: 60,
          padding: const EdgeInsets.only(top: 11, bottom: 11),
          child: Text(
            widget.g,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: Colors.black),
          ),
        )
      ],
    );
  }
}
