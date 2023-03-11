void main(){
  criarBotao("Diogo");

}

//Parâmetros posicionais são os parametros normais que sempre aprendemos a utilizar.
//Parametros opcionais são utilizados pondo-se [], desse modo o paramtro não é obrigado a ser inserido.
//Exemplo:
//Se nada for inserido ele utiliza o valor padrão, senao ele utiliza o valo passado por parametro.

void criarBotao(String nome, [String cor = "amarelo", double tamanho = 0]){
  print(nome);
  print(cor);
  print(tamanho);
}