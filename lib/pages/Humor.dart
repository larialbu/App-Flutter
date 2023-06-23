import 'dart:html';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:telahome/pages/HistoricoHumor.dart';
import 'package:telahome/pages/Home.dart';

class Humor extends StatefulWidget {
  final int selectedIndex;

  Humor({required this.selectedIndex});

  _HumorState createState() => _HumorState();
}

class _HumorState extends State<Humor> {
  final TextEditingController _bemController = TextEditingController();
  final TextEditingController _malController = TextEditingController();
  final TextEditingController _aprendizadoController = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  @override
  void dispose() {
    _bemController.dispose();
    _malController.dispose();
    _aprendizadoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Humor',
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
      backgroundColor: Colors.white,
      body: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        padding: EdgeInsets.only(left: 26, right: 30, top: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              height: 26.94,
              child: Text(
                "Como foi seu dia?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
                overflow: TextOverflow.visible,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width > 350
                  ? 350
                  : MediaQuery.of(context).size.width,
              height: 87,
              decoration: BoxDecoration(
                color: Color(0xfffaf0db),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sentiment_very_satisfied),
                    iconSize: 40,
                    color:
                        widget.selectedIndex == 1 ? Colors.black : Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sentiment_satisfied),
                    iconSize: 40,
                    color:
                        widget.selectedIndex == 2 ? Colors.black : Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sentiment_neutral),
                    iconSize: 40,
                    color:
                        widget.selectedIndex == 3 ? Colors.black : Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sentiment_dissatisfied),
                    iconSize: 40,
                    color:
                        widget.selectedIndex == 4 ? Colors.black : Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sentiment_very_dissatisfied),
                    iconSize: 40,
                    color:
                        widget.selectedIndex == 5 ? Colors.black : Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 30,
              padding: EdgeInsets.only(right: 118),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "O que te fez bem?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 332,
              height: 56,
              child: TextFormField(
                controller: _bemController,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: 'Diz aí',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Text(
              "O que te fez mal?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 332,
              height: 56,
              child: TextFormField(
                controller: _malController,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: 'Diz aí',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Text(
              "O que você aprendeu hoje?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 332,
              height: 56,
              child: TextFormField(
                controller: _aprendizadoController,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: 'Não aumente nem diminua',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: 332,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  saveHumorData(widget.selectedIndex);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoricoHumor(),
                    ),
                  );
                },
                child: Text(
                  'Salvar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 44),
            Container(
              width: 332,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xfffaf0db),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoricoHumor(),
                    ),
                  );
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
    );
  }

  void saveHumorData(int selectedIndex) async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      final userId = user.uid;
      final currentDate = DateTime.now();

      await _firestore.collection('humor').add({
        'Id do Usuário': userId,
        'Seu humor neste dia': selectedIndex,
        'O que te fez bem?': _bemController.text,
        'O que te fez mal?': _malController.text,
        'O que você aprendeu hoje?': _aprendizadoController.text,
        'Data': currentDate,
      });
    }
  }
}
