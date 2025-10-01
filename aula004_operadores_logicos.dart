void main(){
  //Declarando variáveis
  int a = 20;
  int b = 5;
  int c = 7;

  //Verificando verdadeiro
  bool proposicao1 = a > b;
  bool proposicao2 = b < c;

  print('VERDADEIRO---------------------------------------------------------');
  print('$a > $b && $b < $c - Resposta: ${proposicao1 && proposicao2}');
  print('$a > $b || $b > $c - Resposta: ${proposicao1 || proposicao2}');
  print('');

  //Verificando falso
  bool proposicao3 = a < b;
  bool proposicao4 = b > c;

  print('FALSO--------------------------------------------------------------');
  print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao4}');
  print('$a > $b || $b > $c - Resposta: ${proposicao3 || proposicao4}');
  print('');

  //Negando um valor
  bool v = true;
  bool f = false;

  print('NEGANDO------------------------------------------------------------');
  print('Negando o V: ${!v}');
  print('Negando o F: ${!f}');
}