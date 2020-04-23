import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuItem({Key key, this.icon, this.text = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 0.7, color: Colors.white54),
        top: BorderSide(width: 0.7, color: Colors.white54),
      )),
      child: RaisedButton(
        color: Colors.purple[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(text, style: TextStyle(fontSize: 12, height: 1.3),)
            ]),
            Icon(Icons.chevron_right, size: 16,)
          ],
        ),
      ),
    );
  }
}
