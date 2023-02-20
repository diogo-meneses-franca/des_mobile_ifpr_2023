import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget{
  const PrimeiraPagina({super.key});

  Widget build(BuildContext context){
    String nome = '';
    return Scaffold(appBar: AppBar(
      title: const Text("Primeira Página"),
      ),
      body: Center(
        child: Column(
          children: [
           TextField(
              decoration: const InputDecoration(
                label: Text("Nome"),
                hintText: "Informe o seu nome"
                ),
                onChanged: (String valorDigitado) => nome = valorDigitado,
              ),
              ElevatedButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context){
                          return AlertDialog(content: Text("Nome"),)
                });}, 
                child: const Text('Meu botão'),
              ),
            ]),
          ),
    );
  }
}