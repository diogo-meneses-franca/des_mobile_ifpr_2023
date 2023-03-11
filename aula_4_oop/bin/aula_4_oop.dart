import 'package:aula_4_oop/aula_4_oop.dart' as aula_4_oop;

import 'classes/aluno.dart';
import 'classes/aluno3.dart';
import 'classes/aluno4.dart';
import 'classes/professor.dart';
import 'classes/professor2.dart';

// Atividade 01 
// - criar professor com 2 atributos
// - alterar atributos do professor para não nulos
// - alterar para contrutores nomeados	
// - criar um objeto aluno no print
// - alterar professor para ter atributos 
//   nulos e não nulos
// - alterar professor para ter um parameter function
// - criar um objeto professor com função nomeada
// - criar um objeto professor com função anônima
// - criar um objeto professor com arrow function 
// - criar um objeto professor com arrow function 
//   no print

void main(List<String> arguments) {
  var aluno = Aluno('Diogo', 200736, '999.999.999-99');

  var aluno3 = Aluno3(nome: 'Allan', RA: 2021780, CPF: '777.777.777-77');


  var aluno4 = Aluno4(
      nome: 'Rafael',
      RA: 2021874,
      CPF: '764.857.923-22',
      minhaFuncao: () {
        return 'minha função anônima';
      });

  var professor = Professor();
  professor.SIAPE = '999888';
  professor.disciplina = 'Desenvolvimento para dispositoivos móveis';
  professor.nome = 'Hélio Kamakawa';

  var professor2 = Professor2(
      nome: 'Azuaite',
      SIAPE: '652932',
      disciplina: 'Cálculo',
      funcaoDoProfessor: () {
        print('Dar aula');
      });

  var professor3 = Professor2(nome: 'Marcelo', SIAPE: '304291', disciplina: 'Programação Orientaa a Objetos', funcaoDoProfessor: funcaoNomeadaDoProfessor);

  print('\nProfessor: ${professor.nome} \nSIAPE: ${professor.SIAPE} \nDisciplina: ${professor.disciplina}\n');
  print('\nAluno: ${aluno.nome} \nRA: ${aluno.RA} \nCPF: ${aluno.CPF}');
  print(Aluno3(nome: 'Eduardo', RA: 2021888, CPF: '222.444.555-66'));
  print('\nAluno${aluno4.nome} \nRA: ${aluno4.RA} \nCPF: ${aluno4.CPF}');
  print('\nProfessor: ${professor2.nome} \nSIAPE: ${professor2.SIAPE} \nDisciplina: ${professor2.disciplina}');


}


void funcaoNomeadaDoProfessor(){
  print('exercício concluído!');
}
