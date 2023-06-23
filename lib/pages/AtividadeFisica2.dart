import 'package:flutter/material.dart';
import 'package:telahome/pages/AtividadeFisica.dart';

class AtividadeFisica2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade Física',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AtividadeFisicaScreen(),
    );
  }
}

class AtividadeFisicaScreen extends StatefulWidget {
  @override
  _AtividadeFisicaScreenState createState() => _AtividadeFisicaScreenState();
}

class _AtividadeFisicaScreenState extends State<AtividadeFisicaScreen> {
  String? selectedAtividade;
  double distanciaPercorrida = 0;
  double caloriasGastas = 0;

  static const Map<String, double> atividades = {
    'Correr': 10, // Distância em km
    'Andar': 5, // Distância em km
  };

  void calcularValores() {
    if (selectedAtividade != null &&
        atividades.containsKey(selectedAtividade!)) {
      double distancia = atividades[selectedAtividade!]!;
      setState(() {
        distanciaPercorrida = distancia;
        caloriasGastas = distancia * 50; // Calorias aproximadas por km
      });
    }
  }

  void salvarDados() {
    // Lógica para salvar os dados (distânciaPercorrida e caloriasGastas)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50), // Espaçamento superior
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AtividadeFisica(),
                        ),
                      );
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Atividade Física",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: 25),
                ],
              ),
            ),
            SizedBox(height: 50), // Espaçamento para baixo
            SizedBox(
              width: 150,
              child: DropdownButton<String>(
                value: selectedAtividade,
                hint: Text('Selecione uma atividade'),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedAtividade = newValue;
                    calcularValores();
                  });
                },
                items: atividades.keys.map((String atividade) {
                  return DropdownMenuItem<String>(
                    value: atividade,
                    child: Text(atividade),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Distância percorrida (km)',
              ),
              onChanged: (value) {
                setState(() {
                  distanciaPercorrida = double.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Calorias gastas',
              ),
              onChanged: (value) {
                setState(() {
                  caloriasGastas = double.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: salvarDados,
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20, // Tamanho da fonte
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFa0cd8c), // Cor de fundo do botão
                fixedSize:
                    Size(200, 60), // Tamanho fixo do botão (largura x altura)
                minimumSize:
                    Size(200, 60), // Tamanho mínimo do botão (largura x altura)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
