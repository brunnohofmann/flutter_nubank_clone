import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/containers/app_modules.dart';
import 'package:nubank_clone/pages/widgets/bottom_menu.dart';
import 'package:nubank_clone/pages/widgets/menu.dart';
import 'package:nubank_clone/pages/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          Menu(isVibible: _showMenu,),
          AppModules(isMenuOpen: _showMenu),
          BottomMenu(isVisible: !_showMenu)
        ],
      ),
    );
  }
}
