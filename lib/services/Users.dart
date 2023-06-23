import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:telahome/pages/Home.dart';
import 'package:telahome/pages/LoginPage.dart';

class UserManagement {
  Future<void> storeNewUser(user, context) async {
    var firebaseUser = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(firebaseUser!.uid)
        .set({'email': user.email, 'uid': user.uid})
        .then((value) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            ))
        .catchError((e) {
          print(e);
        });
  }
}
