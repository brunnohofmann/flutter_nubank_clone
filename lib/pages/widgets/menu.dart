import 'package:flutter/material.dart';

import 'bottom_menu/buttons/menu_item.dart';
import 'bottom_menu/buttons/outlined_button.dart';

class Menu extends StatelessWidget {
  final bool isVibible;

  const Menu({Key key, this.isVibible = false}) : super(key: key);

  Widget TextSubtext({text, subtext}) {
    return Text.rich(TextSpan(
        style: TextStyle(fontSize: 12, height: 1.3),
        text: "$text ",
        children: [
          TextSpan(text: subtext, style: TextStyle(fontWeight: FontWeight.bold))
        ]));
  }

  Widget MenuItems() {
    return Column(
      children: <Widget>[
        Image.network(
            'https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
            height: 120,
            color: Colors.white),
        TextSubtext(text: 'Banco', subtext: '260 - Nu Pagamentos S.A.'),
        TextSubtext(text: 'Agência', subtext: '001'),
        TextSubtext(text: 'Conta', subtext: '00000000-1'),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Column(
            children: <Widget>[
              MenuItem(
                icon: Icons.info_outline,
                text: 'Ajuda',
              ),
              MenuItem(
                icon: Icons.person_outline,
                text: 'Perfil',
              ),
              MenuItem(
                icon: Icons.settings,
                text: 'Configurar Conta',
              ),
              MenuItem(
                icon: Icons.credit_card,
                text: 'Configurar Cartão',
              ),
              MenuItem(
                icon: Icons.store_mall_directory,
                text: 'Pedir conta PJ',
              ),
              MenuItem(
                icon: Icons.phone_android,
                text: 'Configurações do app',
              ),
              Container(margin: EdgeInsets.only(top: 10), child: OutlinedButton(text: 'Sair',))
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    return Positioned(
      top: _screenHeight * .18,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        opacity: this.isVibible ? 1 : 0,
        duration: Duration(milliseconds: 300),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.60,
          child: MenuItems(),
        ),
      ),
    );
  }
}
