void main(){
  Pessoa p1 = Pessoa(nome: "Diogo", idade: "36", email: "diogo.franca@copel.com", telefone: "449911628911");
  Pessoa p2 = Pessoa(nome: "Carlos", idade: "37", email: "edu,tjd@hotmail.com", telefone: "44991768883");
  Especie cachorro = Especie(nome: "Cachorro");
  cachorro.addRaca("Shih-tzu");
  cachorro.addRaca("Vira-lata");
  cachorro.addRaca("Caramelo");
  Especie gato = Especie(nome: "Gato");
  Animal an1 = Animal(nome: "Nick", especie: cachorro, vacinado: true, disponibilidade: "disponível", tutor: p1);
  Animal an2 = Animal(nome: "Yumi", especie: cachorro, vacinado: true, disponibilidade: "disponível", tutor: p1);
  Animal an3 = Animal(nome: "Corote", especie: cachorro, vacinado: true, disponibilidade: "disponível", tutor: p2);

  Animal.addAnimal(an1);
  Animal.addAnimal(an2);
  Animal.addAnimal(an3);

  Animal.mostrarAnimaisDisponiveis();



}



// Exercício II
// Pensar em um projeto único - quanto maior o escopo melhor - possibilita pensar em vários exemplos
// Elabroar funções no escopo do projeto (autêntico)
// Fazer comentários de tudo que entendeu
// Elabore: 
// 1) Duas funções sem retorno e sem parâmetro; 
// 2) Duas funções sem retorno e com parâmetro; 
// 3) Duas funções com retorno e sem parâmetro;  
// 4) Duas funções com retorno e com parâmetro;
// 5) Duas funções com parâmetros opcionais (com o devido contexto);
// 6) Duas funções com parâmetros nomeados.

/*O projeto será um app para a adoção de cães, portanto terá como classes principais
 a classe Animal e a classe Pessoa. São possíveis soluções para os exercícios propostos:  */

 class Pessoa{
  String nome;
  String idade;
  Localizacao? localizacao;
  String email;
  String telefone;
  DateTime dataCadastro = DateTime.now();
  String? foto;

  Pessoa({ 
    required this.nome, 
    required this.idade, 
    required this.email, 
    required this.telefone});
  }

 class Localizacao{
  double? latitude;
  double? longitude;
 }

 class Animal{
   static List<Animal> animais = [];

  
  String nome;
  int? idade;
  Especie especie;
  bool vacinado;
  String disponibilidade;
  DateTime dataCadastro = DateTime.now();
  Pessoa tutor;
  String? foto;

  Animal({
    required this.nome,
    required this.especie, 
    required this.vacinado, 
    required this.disponibilidade, 
    required this.tutor});
    //método sem retorno e sem parâmetro que exibe todos os animais cadastrados disponíveis.
    static void mostrarAnimaisDisponiveis() {
    for(var animal in animais){
      if(animal.disponibilidade.toLowerCase() == "disponível"){
        print("Nome: ${animal.nome}, Vacinado: ${animal.vacinado == true? "Sim": "Não"}, Disponibilidade: ${animal.disponibilidade}");
      }
    }
   }


   //Métoco com parâmetro sem retorno que adiciona um animal na lista de animais 
   static void addAnimal(Animal animal){
    animais.add(animal);
  }
   
 }

 class Especie{
  String nome;
  List<String> raca = [];
  DateTime dataCadastro = DateTime.now();

  void addRaca(String raca){
    this.raca.add(raca);
  }

  Especie({
    required this.nome});
 }

