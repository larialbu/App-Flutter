import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:telahome/pages/AtividadeFisica.dart';
import 'package:telahome/pages/Humor.dart';
import 'package:telahome/pages/Medicamento.dart';
import 'package:telahome/pages/Peso2.dart';
import 'package:telahome/pages/Medicamento.dart';
import 'package:telahome/pages/Agua.dart';
import 'Perfil.dart';
import 'package:telahome/services/ChecagemPage.dart';
import 'package:telahome/pages/Humor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _firebaseAuth = FirebaseAuth.instance;

  // Índice do ícone selecionado

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, Julio'),
        backgroundColor: Color(0xffa0cd8c),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 15),
                    child: Text(
                      "Como você está se sentindo?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width > 350
                    ? 350
                    : MediaQuery.of(context).size.width,
                height: 87,
                decoration: BoxDecoration(
                  color: Color(0xFFf9f4e1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Humor(
                                    selectedIndex: 1,
                                  )),
                        );
                      },
                      icon: Icon(Icons.sentiment_very_satisfied, fill: 1),
                      iconSize: 40,
                      color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Humor(
                                    selectedIndex: 2,
                                  )),
                        ); // Lógica para o estado "Feliz"
                      },
                      icon: Icon(Icons.sentiment_satisfied),
                      iconSize: 40,
                      color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Humor(
                                    selectedIndex: 3,
                                  )),
                        ); // Lógica para o estado "Normal"
                      },
                      icon: Icon(Icons.sentiment_neutral),
                      iconSize: 40,
                      color: _selectedIndex == 3 ? Colors.black : Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 4;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Humor(
                                    selectedIndex: 4,
                                  )),
                        ); // Lógica para o estado "Triste"
                      },
                      icon: Icon(Icons.sentiment_dissatisfied),
                      iconSize: 40,
                      color: _selectedIndex == 4 ? Colors.black : Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 5;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Humor(selectedIndex: 5)),
                        ); // Lógica para o estado "Muito Triste"
                      },
                      icon: Icon(Icons.sentiment_very_dissatisfied),
                      iconSize: 40,
                      color: _selectedIndex == 5 ? Colors.black : Colors.grey,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16, top: 20),
                  child: SizedBox(
                    width: 177,
                    height: 26.94,
                    child: Text(
                      "Minhas atividades",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
                childAspectRatio: 0.8,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Medicamento()),
                      );
                      // Lógica para o primeiro botão
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFa0cd8c),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.medication,
                          size: 60.463829040527344,
                          color: Colors.white,
                        ),
                        Text(
                          'Medicamentos',
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Peso2()),
                      );
                      // Lógica para o segundo botão
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF588aeb),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monitor_weight,
                          size: 60.463829040527344,
                          color: Colors.white,
                        ),
                        Text(
                          'Peso',
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Agua()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff568aed),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.water_drop,
                          size: 60.463829040527344,
                          color: Colors.white,
                        ),
                        Text(
                          'Água',
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AtividadeFisica()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFa0cd8c),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_run,
                          size: 60.463829040527344,
                          color: Color(0xffffffff),
                        ),
                        Text(
                          'Atividade Física',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: "Poppins",
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Julio"),
              accountEmail: Text("flutteraccenture@email.com"),
              decoration: BoxDecoration(
                color: Color(0xffa0cd8c),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.al.sp.gov.br/repositorio/deputadoPortal/fotos/20230315-170849-id=1649-PEQ.jpeg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: const Text(
                'Dados pessoais',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Perfil()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text(
                'Sair',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                sair();
              },
            ),
          ],
        ),
      ),
    );
  }

  sair() async {
    await _firebaseAuth.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ChecagemPage(),
      ),
    );
  }
}
