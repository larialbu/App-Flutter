import 'package:flutter/material.dart';

class HistoricoHumor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                maxHeight: constraints.maxHeight,
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 69),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Ação ao clicar no botão de retorno
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
                          "Histórico de pesos",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "30/05/2023", // Substitua pela data atual em formato de números
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1),
                  SingleChildScrollView(
                    child: Container(
                      width: 332,
                      height: 80, // Ajuste a altura do contêiner de fundo
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 1,
                            offset: Offset(
                              0,
                              6,
                            ),
                          ),
                        ],
                        color: Color(0x84fffdfd),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 6),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.monitor_weight,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "56,00 KG",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete_outline,
                                    color: Color(0xff000000),
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    _exibirDialogo(
                                        context); // Chama a função _exibirDialogo passando o contexto atual
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _exibirDialogo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Remover este registro?"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  child: Text(
                    "Sim",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Fechar o diálogo
                    _exibirMensagemRegistroRemovido(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: TextButton(
                  child: Text(
                    "Não",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // Ação para remover o registro
                    Navigator.of(context).pop(); // Fechar o diálogo
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _exibirMensagemRegistroRemovido(BuildContext context) {
    final snackBar = SnackBar(
      content: Text("Registro removido"),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

void main() {
  runApp(MaterialApp(
    home: HistoricoHumor(),
  ));
}
