import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final bool isActive;

  const Dot({Key key, this.isActive = false}) : super(key: key);

  Color getColor() {
    return this.isActive ? Colors.white : Colors.white38;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
      child: AnimatedContainer(
        height: 7,
        width: 7,
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(color: getColor(), shape: BoxShape.circle),
      ),
    );
  }
}
