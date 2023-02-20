import 'package:flutter/material.dart';
import 'botao_calculo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? primeiroNumero;
  int? segundoNumero;
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (String value) {
                primeiroNumero = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Digite um número"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (String value) {
                segundoNumero = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Digite um número"),
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoDeCalculo(
                  funcao: () {
                    setState(() {
                      resultado = (primeiroNumero! + segundoNumero!).toString();
                    });
                  },
                  icone: Icons.add),
              const SizedBox(
                width: 30.0,
              ),
              BotaoDeCalculo(
                  funcao: () {
                    setState(() {
                      resultado = (primeiroNumero! - segundoNumero!).toString();
                    });
                  },
                  icone: Icons.remove),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Text(
            resultado,
            style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
