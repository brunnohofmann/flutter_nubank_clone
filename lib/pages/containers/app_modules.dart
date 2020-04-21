import 'package:flutter/material.dart';
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
        top: _screenHeight * (widget.isMenuOpen ? .40 : .20),
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
      AnimatedPositioned(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
        top: _screenHeight * (widget.isMenuOpen ? .99 : .80),
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
