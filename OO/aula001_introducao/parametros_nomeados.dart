// Definição da classe Pessoa
class Pessoa {
  //Delaração do atributo "nome" do tipo String
  final String nome; //final como se fosse um CONST
  //Declaração do atributo "idade" do tipo int
  final int idade;

  //Construtor da classe
  Pessoa({
    //Parâmetro obrigatório, garante inicialização segura
    required this.nome,
    required this.idade,
  });
  
  //Método para exibir os dados da pessoa
  void exibirDados(){
    print('-' * 70);
    print('Nome: $nome');
    print('Idade: $idade');
    print('-' * 70);
  }
}

void main(){
  //Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa1 = Pessoa(nome: 'John Doe', idade: 25); //parâmetros nomeados
  //Chamada do método exibirDados da instância pessoa1
  pessoa1.exibirDados();

  //Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa2 = Pessoa(nome: 'Jane Doe', idade: 35);
  //Chamada do método exibirDados da instância pessoa1
  pessoa2.exibirDados();
}