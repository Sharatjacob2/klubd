import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:klarete/pages/clubs.dart';

import 'basic_builder.dart';

class ClassProfile extends StatelessWidget {
  const ClassProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;
    double Classheight = size.height;
    double Classwidth = size.width;


    return Scaffold(
      body: ColorfulSafeArea(
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              StarterDesign(2, "CSB"),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
 margin:
                    EdgeInsets.symmetric(horizontal: (Classwidth - 295) / 2),                  child: const Text(
                    "STUDENTS",
                    style: TextStyle(
                      fontSize: 27.3, 
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("SHARAT", "Sharat"),
                  Clubber("ADITHYA", "Adithya"),
                  Clubber("NIKITA", "Nikita"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("NAYANA", "Nayana"),
                  Clubber("KRISHNENDHU", "Krishnendhu"),
                  Clubber("PRANAV", "Pranav"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("ADITHYA", "Adithya"),
                  Clubber("KRISHNENDHU", "Krishnendhu"),
                  Clubber("SHARAT", "Sharat"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("PRANAV", "Pranav"),
                  Clubber("NAYANA", "Nayana"),
                  Clubber("NIKITA", "Nikita"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("NIKITA", "Nikita"),
                  Clubber("KRISHNENDHU", "Krishnendhu"),
                  Clubber("ADITHYA", "Adithya"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Clubber("SHARAT", "Sharat"),
                  Clubber("PRANAV", "Pranav"),
                  Clubber("NAYANA", "Nayana"),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
