import 'package:flutter/material.dart';

class BotaoDeCalculo extends StatelessWidget {
  Function funcao;
  IconData icone;
  BotaoDeCalculo({required this.funcao, required this.icone});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      onPressed: () {
        funcao();
      },
      child: Icon(
        icone,
        size: 50.0,
      ),
    );
  }
}
