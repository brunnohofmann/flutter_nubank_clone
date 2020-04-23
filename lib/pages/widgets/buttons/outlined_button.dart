import 'package:flutter/material.dart';

class OutlinedButton extends StatelessWidget {
  final String text;

  const OutlinedButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: OutlineButton(
        borderSide: BorderSide(width: 0.5, color: Colors.white54),
        child: Text(
          'Sair',
          style: TextStyle(fontSize: 12, height: 1.3),
        ),
        onPressed: () {},
      ),
    );
  }
}
