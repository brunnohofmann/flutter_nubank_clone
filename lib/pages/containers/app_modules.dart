import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/containers/CreditAccountResume.dart';
import 'package:nubank_clone/pages/widgets/dot.dart';
import 'package:nubank_clone/pages/widgets/module_card.dart';

class AppModules extends StatefulWidget {
  final double top;
  final bool isMenuOpen;

  const AppModules({Key key, this.top, this.isMenuOpen = false}) : super(key: key);

  @override
  _AppModulesState createState() => _AppModulesState();
}

class _AppModulesState extends State<AppModules> {
  static int SCREEN1 = 0;
  static int SCREEN2 = 1;
  static int SCREEN3 = 2;

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
      AnimatedPositioned(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
        top: _screenHeight * (widget.isMenuOpen ? .80 : .25),
        height: _screenHeight * .45,
        left: 0,
        right: 0,
        child: PageView(
          onPageChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          physics: widget.isMenuOpen ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: [
            ModuleCard(child: CreditAccountResume(),),
            ModuleCard(),
            ModuleCard(),
          ],
        ),
      ),
      AnimatedPositioned(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
        top: _screenHeight * (widget.isMenuOpen ? .99 : .80),
        child: Row(
          children: [
            Dot(isActive: _currentIndex == SCREEN1),
            Dot(isActive: _currentIndex == SCREEN2),
            Dot(isActive: _currentIndex == SCREEN3),
          ],
        ),
      )
    ]);
  }
}
