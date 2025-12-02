void main(){
  //Esta variável PODE ser nula (por causa do ?)
  String? nome;

  //Esta variável NÃO pode ser nula (sem ?)
  String saudacao = "Olá!";

  //---------------
  print('Exemplo 1: Variável nula');
  print(nome); // Saida null (tudo bem, ela pode ser nula)

  //---------------
  print('-' * 70);
  print('\nExemplo2: Atribuindo valor à variável nula');
  nome = 'Maria';
  print(nome); // Saida: Maria

  //---------------
  print('-' * 70);
  print('\nExemplo 3: Acessando valor com !');
  //nome agora tem valor, então podemos usar nome!
  String texto = nome!;
  print('Texto com nome: $texto');

  //---------------
  print('-' * 70);
  print('\nExemplo 4: Tentando usar variável não inicializada');
  //vamos criar uma variável que PODE ser nula
  String? mensagem;

  //Agora vamos tentar forçar ela com !
  try{
    String novaMensagem = mensagem!; // Aqui vai dar erro!
    print(novaMensagem);
  } catch (e){
    print('Erro: você tentou usar uma variável nula com !');
    print('DEtalhes: $e');
  }


}