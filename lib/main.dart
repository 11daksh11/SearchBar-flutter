import 'package:SearchImplement/addConcert.dart';
import 'package:SearchImplement/details.dart';
import 'package:SearchImplement/home.dart';
import 'package:SearchImplement/search.dart';
import 'package:SearchImplement/searchNew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.light(),
      initialRoute: "nav",
      routes: {
        "nav": (context) => Nav(),
        "home": (context) => SearchPage(),
        "addconcert": (context) => AddConcert(),
        "new": (context) => SearchNew(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
