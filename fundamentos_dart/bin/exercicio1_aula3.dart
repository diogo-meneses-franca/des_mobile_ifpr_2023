

void main(){

}
// Exercício I
// Para cada variante de função que estudamos elaborar a seguinte função:
// 	→ função calularSalario - precisa do (i) valor salario e o (ii) valor do desconto. Permitir o desconto somente se haver saldo. No final informar o saldo.

double calculaSalario(double salario, double desconto){
  double saldo;
  if(salario > 0 && salario > desconto){
    saldo = salario - desconto;
    return saldo;
  }else{
    return 0;
  }

}

