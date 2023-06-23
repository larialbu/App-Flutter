import 'package:flutter/material.dart';

class Peso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Perfil',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Container(
            width: 390,
            height: 844,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  'https://via.placeholder.com/24x24',
                  width: 32,
                  height: 32,
                ),
                Text(
                  '72,00',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kg',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'IMC 26.4 Sobrepeso',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 418,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 130,
                        top: 38,
                        child: Text(
                          'Kg',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 75,
                        top: 27,
                        child: Text(
                          '-2.00',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 91,
                        top: 54,
                        child: Text(
                          'Progresso',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 330,
                        top: 27,
                        child: Text(
                          'Kg',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 274,
                        top: 16,
                        child: Text(
                          '+0.20',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 284,
                        top: 42,
                        child: Text(
                          'Comparado',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 268,
                        top: 57,
                        child: Text(
                          'com (22/08/22)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: 397.21,
                  height: 198,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 268.90,
                        top: 184.26,
                        child: Container(
                          width: 0.5,
                          height: 3.5,
                          color: Colors.grey[800],
                        ),
                      ),
                      Positioned(
                        child: Image.network(
                          'https://via.placeholder.com/389.9493408203125x159.9702606201172',
                          width: 390,
                          height: 160,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                      Positioned(
                        left: 24.02,
                        top: 13.25,
                        child: Row(
                          children: [
                            buildIndicator(),
                            buildIndicator(),
                            buildIndicator(),
                            buildIndicator(),
                            buildIndicator(),
                            buildIndicator(),
                            buildIndicator(),
                            buildIndicator(),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text('70',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                            Text('72',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                            Text('75',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                            Text('79',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                            Text('82',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                            Text('85',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                            Text('81',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                            Text('79',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[800])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: 418,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 43,
                        top: 9,
                        child: Text(
                          'Peso ideal 57,00 Kg',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 41,
                        top: 47,
                        child: Container(
                          width: 20,
                          height: 0.5,
                          color: Colors.indigo[700],
                        ),
                      ),
                      Positioned(
                        left: 122,
                        top: 47,
                        child: Container(
                          width: 20,
                          height: 0.5,
                          color: Colors.green[500],
                        ),
                      ),
                      Positioned(
                        left: 203,
                        top: 47,
                        child: Container(
                          width: 20,
                          height: 0.5,
                          color: Colors.yellow[500],
                        ),
                      ),
                      Positioned(
                        left: 284,
                        top: 47,
                        child: Container(
                          width: 20,
                          height: 0.5,
                          color: Colors.red[600],
                        ),
                      ),
                      Positioned(
                        left: 203,
                        top: 29,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 102,
                        top: 49,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[700],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 102,
                        top: 66,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[500],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 133,
                        top: 58,
                        child: Text(
                          'Abaixo do peso',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 133,
                        top: 74,
                        child: Text(
                          'Peso ideal',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 219,
                        top: 50,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[700],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 219,
                        top: 67,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[600],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 59,
                        child: Text(
                          'Sobrepeso',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 75,
                        child: Text(
                          'Obesidade I',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Peso',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'O peso refere-se ao peso do corpo de uma pessoa. Pode conhecer seu estado de saúde com base nas alterações de peso. Se perdeu ou ganhou muito peso em um curto período de tempo, é necessária uma análise mais aprofundada.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8),
                    Transform.rotate(
                      angle: -90 * 3.14159 / 180,
                      child: Container(
                        width: 2,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '>',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildIndicator() {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
    );
  }
}
