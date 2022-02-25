import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';

class ChooseClass extends StatefulWidget {
  const ChooseClass({Key? key}) : super(key: key);

  @override
  _ChooseClassState createState() => _ChooseClassState();
}

class _ChooseClassState extends State<ChooseClass> {
  int value = 0;

// ignore: non_constant_identifier_names
  Widget ClassBlock(String g, int index) {

    

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      width: 90,
      height: 90,
      child: TextButton(
        onPressed: () => {
          setState(() {
            value = index;
          })
        },
        style: TextButton.styleFrom(
          backgroundColor:
              value == index ? Colors.black12 : const Color(0xFF65468D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.47),
          ),
        ),
        child: Text(
          g,
          style: TextStyle(
            color: value == index ? Colors.black : Colors.white,
            fontSize: 21.99,
          ),
        ),
      ),
    );
  }

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
            LongButton("CLUBS", 'chooseClubs', 1),
            SkipAll(),
          ],
        ),
      ),
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
                    "Select your class:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClassBlock("CSA", 4),
                    ClassBlock("CSB", 5),
                    ClassBlock("EBE", 6),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClassBlock("ECA", 1),
                    ClassBlock("ECB", 2),
                    ClassBlock("EEE", 3),
                  ]),
              Align(alignment: Alignment.center, child: ClassBlock("MECH", 7)),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Year of Passout: ",
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
                          "2023",
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
            ],
          ),
        ),
      ),
    );
  }
}

class SkipAll extends StatelessWidget {
  const SkipAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LongButton("SKIP ALL", 'homer', 2);
  }
}
