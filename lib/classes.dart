// Declaração da classe Pessoa.
//
// Uma classe funciona como um "molde" para criar objetos.
// Neste caso, o molde representa uma pessoa.
class Pessoa {

  // Atributos/propriedades da classe.
  //
  // String? -> pode armazenar uma String ou null.
  String? nome;

  // int? -> pode armazenar um número inteiro ou null.
  int? idade;

  // String? -> pode armazenar uma String ou null.
  String? cidade;


  // CONSTRUTOR da classe Pessoa.
  //
  // O construtor é executado quando criamos um objeto:
  //
  // Pessoa pessoa = Pessoa('Rodrigo', 42, 'São Paulo');
  //
  // Ele recebe três parâmetros:
  //
  // String nome
  // int idade
  // String cidade
  //
  // Esses parâmetros são obrigatórios porque não possuem
  // [] nem ? e precisam ser informados na criação do objeto.
  Pessoa(String nome, int idade, String cidade)

      // O ":" inicia a lista de inicialização do construtor.
      //
      // Aqui estamos dizendo:
      //
      // "Pegue o parâmetro nome recebido pelo construtor
      // e coloque dentro do atributo nome deste objeto."
      : this.nome = nome,

        // O mesmo acontece com idade.
        //
        // Parâmetro "idade" -> atributo "idade" do objeto.
        this.idade = idade,

        // E aqui:
        //
        // Parâmetro "cidade" -> atributo "cidade" do objeto.
        this.cidade = cidade;


  // Método da classe.
  //
  // "void" significa que o método não retorna nenhum valor.
  //
  // "apresentar" é o nome do método.
  void apresentar() {

    // Acessa os atributos do próprio objeto através
    // da interpolação de Strings.
    //
    // $nome    -> coloca o valor de nome
    // $idade   -> coloca o valor de idade
    // $cidade  -> coloca o valor de cidade
    print('Olá meu nome é $nome, tenho $idade e moro em $cidade');
  }
}


// Ponto de entrada do programa.
void main() {

  // Cria um objeto da classe Pessoa.
  //
  // Pessoa -> tipo da variável
  // pessoa -> nome da variável
  // Pessoa(...) -> chama o construtor
  //
  // Os valores enviados para o construtor são:
  //
  // 'Rodrigo'      -> nome
  // 42             -> idade
  // 'São Paulo'    -> cidade
  Pessoa pessoa = Pessoa('Rodrigo', 42, 'São Paulo');


  // Chama o método apresentar() do objeto pessoa.
  //
  // O objeto já possui:
  //
  // pessoa.nome   = 'Rodrigo'
  // pessoa.idade  = 42
  // pessoa.cidade = 'São Paulo'
  //
  // Portanto, o método irá imprimir:
  //
  // Olá meu nome é Rodrigo, tenho 42 e moro em São Paulo
  pessoa.apresentar();
}