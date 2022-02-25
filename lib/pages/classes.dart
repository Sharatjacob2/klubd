import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/temporary.dart';
import 'basic_builder.dart';

class Classes extends StatelessWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              StarterDesign(2, "CLASSES"),
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SquareBlock("CS5A"),
                  SquareBlock("CS5B"),
                  SquareBlock("EB5E"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SquareBlock("EC5A"),
                  SquareBlock("EC5B"),
                  SquareBlock('EE5E'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ClassYear("FIRST YEAR", '1'),
              ClassYear("SECOND YEAR", '3'),
              ClassYear("THIRD YEAR", '5'),
              ClassYear("FOURTH YEAR", '7'),
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
class ClassYear extends StatelessWidget {
  late String g, h;
  late int k;
  ClassYear(
    String s,
    String n, {
    Key? key,
  }) : super(key: key) {
    g = s;
    h = n;
    k = int.parse(n);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double Classheight = size.height;
    double Classwidth = size.width;

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: (Classwidth - 290) / 2),
            child: Text(
              g,
              style: const TextStyle(
                fontSize: 27.3,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SquareBlock("CS" + h + "A"),
            SquareBlock("CS" + h + "B"),
            SquareBlock("EB" + h + "E"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SquareBlock("EC" + h + "A"),
            SquareBlock("EC" + h + "B"),
            SquareBlock("EE" + h + "E"),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: (Classwidth - 300) / 2),
            child: (k < 5)
                ? SquareBlock("MEC" + h + "H")
                : const SizedBox(
                    height: 1,
                  ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
