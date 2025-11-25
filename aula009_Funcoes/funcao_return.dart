void main(){
  //Declara variáveis e passar funções
  double media = calcularMedia(10, 10, 10, 10);
  double divisao = calcularDivisao(10, 5);
  //Saída
  print('Média Aritimética');
  print('-' * 70);
  print('A média é: $media');
  print('A divisão é: $divisao');
  // Calcular porcentagem
  double percent = 5;
  double valor = 100;
  double percentual = clacularPorcentagem(percent, valor);
  //Saida
  print('$percent% de $valor = $percentual');
}

//Declaração de funções TEM QUE SER FORA DO VOID
double calcularMedia(double n1, double n2, double n3, double n4)=>
    (n1 + n2 + n3 + n4) /4;
    
// Calcular a divisão, com verificação de divisão por zero
double calcularDivisao(double n1, double n2){
  if(n2 == 0){
    print('Erro: Divisão por zero!');
    return 0;
  }
  return n1 / n2;
}

//Calcula porcentagem (arrow function)
double clacularPorcentagem(double percent, double valor) =>
    (percent * valor) / 100;