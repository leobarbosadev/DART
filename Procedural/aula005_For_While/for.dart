import 'dart:io';

void main(){
  print('-' * 40);
  print('FOR SIMPLES');
  for (int i = 1; i <= 5; i++){
    print(i); //quebra de linha
  };

  for (int i = 1; i <= 5; i++){
    stdout.write('$i ');
  };
  /**
 * Neste exemplo, a variável i é incializada
 * com o valor 1 antes do início do loop.
 * A condição de controle i <= 5 verifica se a 
 * variável i é menor ou igual a 5. Enquanto
 * essa condição for verdadeira, o bloco de
 * código dentro do loop será executado.
 * O incremento i++ é executado após cada iteração,
 * adicionando 1 a variável i. O resultado desse
 * código será a impressão dos números de
 * 1 a 5 na saída padrão.
 */
  print('');
  print('-' * 40);
  print('LISTAGEM COM FOR');
  //Lista do tipo String
  List<String> panteras76 = ['Kelly Garrett', 'Jill Munroe', 'Sabrina Duncan'];
  
  for(String personagem in panteras76){
    print(personagem);
  };
  /**
   * Neste exemplo, a lista de strings panteras76 é
   * inicializada com 3 elementos. Em seguida,
   * o "for-in" é usado para iterar sobre cada
   * elemento da lista e imprimir na saída padrão.
   * A variável personagem é declarada como do
   * tipo String e receberá cada elemento da
   * lista em cada iteração.
   */
  print('-' * 40);
  print('FOR EACH');
  //Lista do tipo String
  List<String> panteras = ['Jacyn Smith', 'Farrah Fawcett', 'Kate Jackson'];

  panteras.forEach((atriz){
    print(atriz);
  });
  print('-' * 40);
}
