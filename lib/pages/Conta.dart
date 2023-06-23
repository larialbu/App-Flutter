import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Conta extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Editar Conta',
          style: TextStyle(color: Color(0xffffffff)),
        ),
        backgroundColor: Color(0xffa0cd8c),
        iconTheme: IconThemeData(
          color: Color(0xffffffff),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: 390,
            height: 844,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 48,
                  top: 178,
                  child: Text(
                    "Nome:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 332,
                  height: 60,
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: 'E-Mail',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 332,
                  height: 62,
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 271,
                  child: Text(
                    "Email:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 310,
                  child: Text(
                    "elinasouza@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 297,
                  child: Container(
                    width: 332,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0x54d9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 364,
                  child: Text(
                    "Senha:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 403,
                  child: Text(
                    "*******",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 390,
                  child: Container(
                    width: 332,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0x54d9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 457,
                  child: Text(
                    "Data de nascimento:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 496,
                  child: Text(
                    "27/07/2003",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 483,
                  child: Container(
                    width: 332,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0x54d9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 69,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FlutterLogo(size: 24),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Conta(),
  ));
}
