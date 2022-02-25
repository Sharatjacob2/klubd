import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NextButton extends StatelessWidget {
  late String g, h;
  NextButton(String s, String i, {Key? key}) : super(key: key) {
    g = s;
    h = i;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:  Color(0xFFAA064C),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/$h');
        },
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            g,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
