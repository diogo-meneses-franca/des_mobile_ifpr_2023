import 'package:aula_2/primeira_pagina.dart';
import 'package:flutter/material.dart';

class Configuracoes extends StatelessWidget{
  const Configuracoes({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Título',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const PrimeiraPagina(),
      );
  }
}