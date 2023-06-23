import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:telahome/pages/Home.dart';

class Peso2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: Text("Insira seu novo peso"),
        backgroundColor: Color(0xffa0cd8c),
        actions: <Widget>[
          BackdropToggleButton(
            icon: AnimatedIcons.list_view,
          ),
        ],
      ),
      backLayer: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 106),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: constraints.maxHeight * 0.17),
                  Container(
                    width: 332,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 25),
                        Icon(
                          Icons.person,
                          color: Color(0xff000000),
                          size: 35,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Peso',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                              isCollapsed: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            color: Colors.black,
                            child: Text(
                              'Kg',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.07),
                  SizedBox(
                    width: 215,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        ); // Adicione aqui a função para lidar com o botão "Salvar"
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffa0cd8c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Salvar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: constraints.maxHeight *
                          0.22), // Altura fixa para o espaçamento
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        // Adicione aqui a função para lidar com o botão "Visualizar histórico de peso"
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      child: Text("Visualizar histórico de peso"),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      frontLayer: Center(
        child: Text(
          "Visualizar histórico de peso",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
