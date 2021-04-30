import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/hakkindaSayfasi.dart';
import 'package:my_project/anaEkran.dart';
import 'package:my_project/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: { "/" : (context) => LoginPage(),
      "/HomePage" : (context) => anaEkran(),
        "/hakkindaSayfasi" : (context) => hakkindaSayfasi(),
      },



    );
  }
}
