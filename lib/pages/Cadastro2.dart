import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:telahome/pages/Cadastro.dart';
import 'LoginPage.dart';

class Cadastro2 extends StatefulWidget {
  String? name;
  String? email;

  Cadastro2({required this.name, required this.email});
  @override
  _Cadastro2State createState() => _Cadastro2State();
}

class _Cadastro2State extends State<Cadastro2> {
  TextEditingController dateInput = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final _peso_controller = TextEditingController();
  final _altura_controller = TextEditingController();
  final masc = 1;
  final fem = 2;
  double peso = 0.0;
  double altura = 0.0;
  int sexBio = 0;

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  void dispose() {
    _peso_controller.dispose();
    _altura_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Complete seu cadastro',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.black), // Define a cor do ícone da AppBar
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var allowDecimal;
          return SizedBox(
            width: double.infinity,
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.1,
                  vertical: constraints.maxHeight * 0.1,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 0),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          hintText: "Selecione seu gênero biológico",
                          filled: true,
                          fillColor: Color(0x54d9d9d9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                              value: "Masculino",
                              child: Text(
                                "Masculino",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              onTap: () {
                                sexBio = masc;
                              }),
                          DropdownMenuItem(
                              value: "Feminino",
                              child: Text(
                                "Feminino",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              onTap: () {
                                sexBio = fem;
                              }),
                        ],
                        onChanged: (String? value) {},
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: dateInput,
                        decoration: InputDecoration(
                          hintText: "Data de Nascimento",
                          filled: true,
                          fillColor: Color(0x54d9d9d9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('dd-MM-yyyy').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                          } else {}
                        },
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _peso_controller,
                        keyboardType: TextInputType.numberWithOptions(
                            decimal: allowDecimal),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
                          TextInputFormatter.withFunction(
                            (oldValue, newValue) => newValue.copyWith(
                              text: newValue.text.replaceAll('.', ','),
                            ),
                          ),
                        ],
                        decoration: InputDecoration(
                          hintText: "Peso",
                          filled: true,
                          fillColor: Color(0x54d9d9d9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.5),
                          ),
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _altura_controller,
                        keyboardType: TextInputType.numberWithOptions(
                            decimal: allowDecimal),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
                          TextInputFormatter.withFunction(
                            (oldValue, newValue) => newValue.copyWith(
                              text: newValue.text.replaceAll('.', ','),
                            ),
                          ),
                        ],
                        decoration: InputDecoration(
                          hintText: "Altura",
                          filled: true,
                          fillColor: Color(0x54d9d9d9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.5),
                          ),
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.3),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            salvarUsuario(widget.name, widget.email);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff9dcf88),
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
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void salvarUsuario(name, email) async {
    final currentDate = DateTime.now();

    await _firestore.collection('user').add({
      'Nome': name,
      'Email': email,
      'Sexo Biológico': sexBio,
      'Peso': double.parse(_peso_controller.text),
      'Altura': double.parse(_altura_controller.text),
      'Data do Cadastro': currentDate,
    });
  }
}
