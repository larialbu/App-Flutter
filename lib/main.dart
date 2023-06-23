import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:telahome/pages/LoginPage.dart';
import 'package:telahome/services/ChecagemPage.dart';
import 'firebase_options.dart';
import 'package:intl/date_symbol_data_local.dart';

Future main() async {
  await initializeDateFormatting();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChecagemPage(),
    ),
  );
}
