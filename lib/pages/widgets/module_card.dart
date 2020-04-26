import 'package:flutter/material.dart';

class ModuleCard extends StatelessWidget {
  final Widget child;

  const ModuleCard({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: child,
      ),
    );
  }
}
