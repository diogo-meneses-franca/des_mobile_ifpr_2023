import 'package:aula_2_des_mobile_ifpr/homepage.dart';
import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  const PrimeiraPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const HomePage(),
    );
  }
}
