import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/choose_class.dart';
import 'package:klarete/pages/special_widgets.dart';

import 'basic_builder.dart';

class EnterBio extends StatelessWidget {
  const EnterBio({Key? key}) : super(key: key);

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
            LongButton("CLASS", 'chooseClass', 1),
SkipAll(),            ],
        ),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: ColorfulSafeArea(
        color: const Color(0xFF65468D),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StarterDesign(1, "choose"),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: (Classwidth - 300) / 2),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "WELCOME, SHARAT!",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: (Classwidth - 300) / 2),
                    child: const Text(
                      "TELL US A LITTLE BIT ABOUT YOURSELF. (OR DON’T. IT’S A FREE WORLD.)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
