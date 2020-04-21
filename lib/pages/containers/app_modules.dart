import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/widgets/dot.dart';
import 'package:nubank_clone/pages/widgets/module_card.dart';

class AppModules extends StatefulWidget {
  final double top;

  const AppModules({Key key, this.top}) : super(key: key);

  @override
  _AppModulesState createState() => _AppModulesState();
}

class _AppModulesState extends State<AppModules> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    return Stack(alignment: Alignment.topCenter, children: [
      Positioned(
        top: widget.top,
        height: _screenHeight * .60,
        left: 0,
        right: 0,
        child: PageView(
          onPageChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          physics: BouncingScrollPhysics(),
          children: [
            ModuleCard(),
            ModuleCard(),
            ModuleCard(),
          ],
        ),
      ),
      Positioned(
        top: _screenHeight * .80,
        child: Row(
          children: [
            Dot(isActive: _currentIndex == 0),
            Dot(isActive: _currentIndex == 1),
            Dot(isActive: _currentIndex == 2),
          ],
        ),
      )
    ]);
  }
}
