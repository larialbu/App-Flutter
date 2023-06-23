import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:telahome/model/constants.dart';

import 'LoginPage.dart';
import 'Cadastro2.dart';
import 'package:telahome/services/ChecagemPage.dart';

class Cadastro extends StatefulWidget {
  Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  String? name;
  String? email;
  final _userNameController = TextEditingController();
  final _password_controller = TextEditingController();
  final _email_controller = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;

  void nameAndEmail(name, email) {
    setState(() {
      name;
      email;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastro',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
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
                      const SizedBox(height: 0),
                      TextFormField(
                        controller: _userNameController,
                        decoration: InputDecoration(
                          hintText: "Nome completo",
                          filled: true,
                          fillColor: const Color(0x54d9d9d9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.5),
                          ),
                        ),
                        onChanged: (value) => name = value,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _email_controller,
                        decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          fillColor: const Color(0x54d9d9d9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.5),
                          ),
                        ),
                        onChanged: (value) => email = value,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _password_controller,
                        decoration: InputDecoration(
                          hintText: "Senha",
                          filled: true,
                          fillColor: const Color(0x54d9d9d9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 0.5),
                          ),
                        ),
                        style: const TextStyle(
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
                            cadastrar();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Cadastro2(name: name, email: email),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            "Avançar",
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

  cadastrar() async {
    _firebaseAuth
        .createUserWithEmailAndPassword(
            email: _email_controller.text, password: _password_controller.text)
        .then((UserCredential userCredential) {
      userCredential.user!.updateDisplayName(_userNameController.text);
    }).catchError((FirebaseAuthException firebaseAuthException) {});
  }
}
