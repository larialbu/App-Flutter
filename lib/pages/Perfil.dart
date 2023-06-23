import 'package:flutter/material.dart';

import 'Conta.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Color(0xffa0cd8c),
      ),
      body: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            SizedBox(height: 66),
            Icon(
              Icons.account_circle_rounded,
              size: 66,
              color: Colors.black,
            ),
            SizedBox(height: 16),
            Text(
              'Elina Souza',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Conta()));
              },
              child: Text('Editar perfil'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xffa0cd8c),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
            ),
            SizedBox(height: 48),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              buildInfoItem('Altura', '1,75cm'),
              buildInfoItem('Peso', '65kg'),
              buildInfoItem('Idade', '19'),
            ]),
            SizedBox(height: 48),
            buildSection('Conta', 'Dados Pessoais'),
            SizedBox(height: 16),
            buildSection('Notificação', 'Notificações'),
          ],
        ),
      ),
    );
  }

  Widget buildInfoItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            foreground: Paint()
              ..shader = LinearGradient(
                colors: [Colors.black, Colors.black],
              ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget buildSection(String title, String subtitle) {
    return Container(
      width: 315,
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(29, 22, 23, 0.07),
            blurRadius: 10,
            offset: Offset(0, 40),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(29, 22, 23, 1),
              ),
            ),
          ),
          Positioned(
            left: 52,
            bottom: 18,
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(123, 111, 114, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
