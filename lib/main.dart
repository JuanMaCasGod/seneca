import 'package:flutter/material.dart';
import 'package:seneca/pages/home_page.dart';
import 'package:seneca/pages/inicial_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
 

      routes: {
        "/" : (BuildContext context) => HomePage(),
        "inicial": (BuildContext context) => InicialPage(),
      },
    );
  }
}