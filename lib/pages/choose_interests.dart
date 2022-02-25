import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:klarete/pages/special_widgets.dart';
import 'package:klarete/pages/basic_builder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ChooseInterests extends StatefulWidget {
  const ChooseInterests({Key? key}) : super(key: key);

  @override
  _ChooseInterestsState createState() => _ChooseInterestsState();
}

class _ChooseInterestsState extends State<ChooseInterests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LongButton("COMPLETE!", 'homer', 1),
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: const Text(
                    "Select your interests:",
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: StaggeredGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: [
                      InterestBlock(2, 1, "PUBLIC SPEAKING"),
                      InterestBlock(1, 1, "WRITING"),
                      InterestBlock(1, 1, "MUSIC"),
                      InterestBlock(2, 1, "ELECTRONICS"),
                      InterestBlock(3, 1, "MANAGERIAL SKILLS"),
                      InterestBlock(1, 1, "CP & DSA"),
                      InterestBlock(2, 1, "LITERATURE"),
                      InterestBlock(2, 1, "WEB DEVELOPER"),
                      InterestBlock(1, 1, "UI/UX"),
                      InterestBlock(3, 1, "APP DEVELOPMENT"),
                      InterestBlock(1, 1, "CODING"),
                      InterestBlock(1, 1, "NATURE"),
                      InterestBlock(1, 1, "SINGER"),
                      InterestBlock(3, 1, "ENTREPRENEURIAL SKILLS"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class InterestBlock extends StatelessWidget {
  late int g, h;
  late String i;
  InterestBlock(
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
      child: Interest(i),
    );
  }
}

// ignore: must_be_immutable
class Interest extends StatefulWidget {
  late String g;
  Interest(String s, {Key? key}) : super(key: key) {
    g = s;
  }

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  bool press = true;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {
        setState(() {
          press = !press;
        })
      },
      style: TextButton.styleFrom(
        backgroundColor: press ? const Color(0xFF65468D) : Colors.black12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            widget.g,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: !press ? Colors.black : Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
