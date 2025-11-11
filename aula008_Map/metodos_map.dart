void main(){
  //length -> retorna o total de partes chave/valor no Map
  Map<String, int> mapLength = {'a': 1, 'b': 2, 'c': 3};
  print('Este Map tem tamanho: ${mapLength.length}');
  print('-' * 70);

  // isEmpty / isNotEmpty -> verificam se o Map está vazio ou não
  dynamic mapTesteVazio = {};
  dynamic mapTesteCheio = {'a': 1};

  print('Map vazio? ${mapTesteVazio.isEmpty}'); // true
  print('Map cheio? ${mapTesteCheio.isEmpty}'); // false

  print('Map não vazio? ${mapTesteVazio.isNotEmpty}'); // false
  print('Map não cheio? ${mapTesteCheio.isNotEmpty}'); // false
  print('-' * 70);

  Map<String, int> mapChaveValor = {'a': 1, 'b': 2, 'c': 3};
  print('Chaves: ${mapChaveValor.keys}');
  print('Valores: ${mapChaveValor.values}');
  print('-' * 70);

  Map<String, int> mapContain =  {'a': 1, 'b': 2, 'c': 3};
  print('O Map contém a chave "a"? ${mapContain.containsKey('a')}'); // true
  print('O Map contém a chave "d"? ${mapContain.containsKey('d')}'); // true

  print('O Map contém o valor 1? ${mapContain.containsValue(1)}'); // true
  print('O Map contém o valor 4? ${mapContain.containsValue(4)}'); // true
  print('-' * 70);

  Map<String, int> testeAbsent =  {'a': 1, 'b': 2, 'c': 3};
  print('Map original: $testeAbsent');

}