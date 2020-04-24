import 'package:flutter/material.dart';

class BottomMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const BottomMenuItem({Key key, this.icon, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 15),
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white24),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(icon),
            Text(
              label,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
