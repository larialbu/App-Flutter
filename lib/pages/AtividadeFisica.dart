import 'package:flutter/material.dart';
import 'package:telahome/pages/AtividadeFisica2.dart';
import 'package:telahome/pages/Home.dart';

class AtividadeFisica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
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
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 150), // Espaçamento vertical menor
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 600 ? 4 : 2,
                  childAspectRatio: 0.8,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para o primeiro botão
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF800080),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.directions_run_outlined,
                            size: 60.463829040527344,
                            color: Colors.white,
                          ),
                          Text(
                            'Correr',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para o segundo botão
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff045b5d),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.directions_walk,
                            size: 60.463829040527344,
                            color: Colors.white,
                          ),
                          Text(
                            'Andar',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 44),
              Container(
                width: 140,
                height: 52,
                child: TextButton(
                  onPressed: () {
                    // Lógica para o botão "Ver histórico"
                  },
                  child: Text(
                    'Ver histórico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AtividadeFisica2()),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
