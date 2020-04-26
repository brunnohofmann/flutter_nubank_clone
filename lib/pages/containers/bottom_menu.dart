import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/widgets/bottom_menu/bottom_menu_item.dart';

class BottomMenu extends StatelessWidget {

  final bool isVisible;

  const BottomMenu({Key key, this.isVisible}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: 0,
      right: 0,
      duration: Duration(milliseconds: 200),
      bottom: isVisible ? MediaQuery.of(context).padding.bottom : 0,
      height: 120,
      child: AnimatedOpacity(
        opacity: isVisible ? 1 : 0,
        duration: Duration(milliseconds: 300),
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              BottomMenuItem(icon: Icons.person_add, label: 'Indicar amigos',),
              BottomMenuItem(icon: Icons.phone_android, label: 'Recarga de celular'),
              BottomMenuItem(icon: Icons.monetization_on, label: 'Depositar'),
              BottomMenuItem(icon: Icons.linear_scale, label: 'Ajustar limite' ),
              BottomMenuItem(icon: Icons.help_outline, label: 'Me Ajuda'),
            ],
          ),
        ),
      ),
    );
  }
}
