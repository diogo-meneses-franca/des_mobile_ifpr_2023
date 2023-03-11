import 'package:entrada_de_dados/entrada_de_dados.dart' as entrada_de_dados;
import 'dart:io';

void main(List<String> arguments) {
  print("Por favor digite seu nome: ");
  var nome = stdin.readLineSync();
  print(nome);
}
