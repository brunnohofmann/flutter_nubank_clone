import 'package:flutter/material.dart';

class CreditAccountResume extends StatelessWidget {
  Widget CardHeader() {
    return Row(
      children: [
        Icon(
          Icons.credit_card,
          color: Colors.grey[600],
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Cartão de Crédito',
            style: TextStyle(color: Colors.grey[600], fontSize: 13),
          ),
        )
      ],
    );
  }

  Widget ActualInvoice() {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FATURA ATUAL',
            style:
                TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold),
          ),
          Text.rich(
            TextSpan(text: 'R\$ ', children: [
              TextSpan(
                  text: '600', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ',50')
            ]),
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.lightBlue, fontSize: 28),
          ),
        ],
      ),
    );
  }

  Widget AvailableLimit() {
    return Text.rich(
      TextSpan(text: 'Limite disponível', children: [
        TextSpan(
            text: ' R\$ 8.500,35',
            style: TextStyle(
                color: Colors.lightGreen, fontWeight: FontWeight.bold)),
      ]),
      textAlign: TextAlign.start,
      style: TextStyle(color: Colors.grey[600]),
    );
  }

  Widget LimitAmmount() {
    return Container(
      width: 8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
      child: Column(
        children: [
          LimitAmmountBar(Colors.orange, 1),
          LimitAmmountBar(Colors.lightBlue, 2),
          LimitAmmountBar(Colors.lightGreen[500], 3),
        ],
      ),
    );
  }

  Widget LimitAmmountBar(Color color, int flexGrow) {
    return Expanded(
      flex: flexGrow,
      child: Container(
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CardHeader(),
                          ActualInvoice(),
                          AvailableLimit(),
                        ],
                      ),
                    )),
                    LimitAmmount()
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  ),
                  Flexible(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Compra mais recente em 99 Food Delivery Tecno no valor de ...',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                    size: 18,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
