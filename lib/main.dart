import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/AcessoApp/login.page.dart';
import 'package:primeiro_app_flutter/pages/Home/home.page.dart';
import 'package:primeiro_app_flutter/pages/appBar.page.dart';
import 'package:primeiro_app_flutter/pages/AcessoApp/cadastro.page.dart';
import 'package:primeiro_app_flutter/pages/AcessoApp/recupera.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginPage(),
    );
  }
}


