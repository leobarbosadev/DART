void main(){
  //Lista de vogais (cada elemento é uma String)
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  
  print('-' * 70);
  print('Lista de vogais');

  //------------------------------------------------
  //For clássico (indexado)
  //Percorre a lista usando um contador 'i' de 0 até vogais.length - 1
  // 'vogais.length' retorna o tamanho da lista
  for(var i = 0; i < vogais.length; i++){
    //Acessamos cada elemento pelo índece i
    print(vogais[i]);
  }
  
  print('-' * 70);
}