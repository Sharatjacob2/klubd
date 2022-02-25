import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectBlock extends StatefulWidget {
  late String g;
  SelectBlock(String s, {key}) : super(key: key) {
    g = s;
  }

  @override
  State<SelectBlock> createState() => _SelectBlockState();
}

class _SelectBlockState extends State<SelectBlock> {
  bool press = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 90,
      height: 90,
      child: TextButton(
        onPressed: () => {
          setState(() {
            press = !press;
          })
        },
        style: TextButton.styleFrom(
          backgroundColor: press ? Colors.black12 : const Color(0xFF65468D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.47),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.g,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: press ? Colors.black : Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class LongButton extends StatelessWidget {
  late String texter, g;
  late int n;
  LongButton(String s, String h, int m, {Key? key}) : super(key: key) {
    texter = s;
    g = h;
    n = m;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 70,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/$g');
          },
          style: TextButton.styleFrom(
            primary: n == 1 ? Colors.white : Colors.black,
            backgroundColor: n == 1 ? const Color(0xFFAA064C) : Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Text(
            texter,
            style: TextStyle(
              color: n == 1 ? Colors.white : Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SquareBlock extends StatelessWidget {
  late String g;
  SquareBlock(String s, {key}) : super(key: key) {
    g = s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 90,
      height: 90,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/classProfile');
        },
        style: TextButton.styleFrom(
          backgroundColor: g == '+'
              ? Theme.of(context).primaryColor
              : const Color(0xFF65468D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.47),
          ),
        ),
        child: Center(
          child: g == '+'
              ? const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                )
              : Text(
                  g,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 21.99,
                  ),
                ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PlusBlock extends StatelessWidget {
  late String g;
  PlusBlock(String s, {key}) : super(key: key) {
    g = s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 90,
      height: 90,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/$g');
        },
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.47),
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
