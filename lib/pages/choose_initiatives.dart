import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/choose_class.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';

class ChooseInitiatives extends StatefulWidget {
  const ChooseInitiatives({Key? key}) : super(key: key);

  @override
  _ChooseInitiativesState createState() => _ChooseInitiativesState();
}

class _ChooseInitiativesState extends State<ChooseInitiatives> {
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
            LongButton("PUBLICATIONS", 'choosePub', 1),
SkipAll(),          ],
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
                    EdgeInsets.symmetric(horizontal: (Classwidth - 295) / 2),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Select your initiatives:",
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
                margin: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectBlock("THE MEC PODCAST"),
                        SelectBlock("FORTITUDE"),
                        SelectBlock("UNFAZE"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectBlock("FORTITUDE"),
                        SelectBlock("UNFAZE"),
                        SelectBlock("THE MEC PODCAST"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectBlock("UNFAZE"),
                        SelectBlock("THE MEC PODCAST"),
                        SelectBlock("FORTITUDE"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectBlock("THE MEC PODCAST"),
                        SelectBlock("FORTITUDE"),
                        SelectBlock("UNFAZE"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectBlock("FORTITUDE"),
                        SelectBlock("UNFAZE"),
                        SelectBlock("THE MEC PODCAST"),
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
