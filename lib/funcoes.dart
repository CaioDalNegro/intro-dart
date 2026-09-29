/*
- void -> Tipo do retorno da função.
         Significa que a função não retorna um valor.

         Exemplos:
         String -> retorna String
         int    -> retorna int
         double -> retorna double
         void   -> não retorna um valor

- main -> Nome da função principal.
         É o ponto de entrada da aplicação Dart.

- () -> Local onde declaramos os parâmetros que a função recebe.

- {} -> Corpo da função.
        É onde colocamos o código que será executado.
*/

void main() {

  // Chama a função saudacao() passando "Rodrigo Rahman"
  //
  // A função retorna uma String.
  // Por isso podemos armazenar o resultado em uma variável String.
  final String saudacaoNome = saudacao('Rodrigo Rahman');

  // Imprime o valor retornado pela função.
  print(saudacaoNome);


  // Chama a função criarMensagem()
  //
  // Estamos passando apenas o parâmetro obrigatório "nome".
  // O sobrenome é opcional.
  criarMensagem('Rodrigo');


  // Também seria possível chamar passando os dois parâmetros:
  //
  // exibirPessoa('Caio', 21, 'Arararaquara');
  //
  // Porém, nesse caso você precisaria definir os parâmetros
  // da função como posicionais.


  // Como exibirPessoa() utiliza parâmetros nomeados,
  // podemos informar qual parâmetro estamos preenchendo.
  //
  // nome: -> "Caio"
  // cidade: -> "Arararaquara"
  //
  // idade não foi informado, então ficará null.
  exibirPessoa(
    nome: 'Caio',
    cidade: 'Arararaquara',
  );
}


// ---------------------------------------------------------
// FUNÇÃO COM PARÂMETRO OBRIGATÓRIO E RETORNO
// ---------------------------------------------------------

String saudacao(String nome) {

  // A função recebe uma String chamada "nome".
  //
  // Como a função foi declarada como String,
  // ela PRECISA retornar uma String.
  return 'Olá $nome seja bem vindo a academia do Flutter';
}


// ---------------------------------------------------------
// PARÂMETRO POSICIONAL OPCIONAL
// ---------------------------------------------------------

String criarMensagem(String nome, [String? sobrenome]) {

  // "nome" é obrigatório.
  //
  // "sobrenome" está dentro de [].
  // Portanto, ele é opcional.
  //
  // String? significa que sobrenome pode ser:
  //
  // String -> "Silva"
  // null   -> nenhum sobrenome informado.


  // Verifica se sobrenome recebeu algum valor.
  if (sobrenome != null) {

    print('Mensagem para: $nome $sobrenome');

  } else {

    // Caso sobrenome seja null.
    print('Mensagem para: $nome');
  }


  // A função foi declarada como String.
  // Portanto, precisa retornar uma String.
  //
  // Neste caso estamos retornando uma String vazia.
  return '';
}


// ---------------------------------------------------------
// PARÂMETROS NOMEADOS
// ---------------------------------------------------------

void exibirPessoa({
  required String nome,
  int? idade,
  String? cidade,
}) {

  // required significa:
  //
  // "nome" é um parâmetro nomeado,
  // mas OBRIGATORIAMENTE precisa ser informado.
  //
  // Por isso isso funciona:
  //
  // exibirPessoa(nome: 'Caio');


  // idade não possui required.
  // Portanto, é opcional.
  //
  // int? significa que pode ser:
  //
  // 21
  // null
  print(nome);
  print(idade);


  // cidade também é opcional.
  print(cidade);
}


// ---------------------------------------------------------
// PARÂMETRO POSICIONAL OPCIONAL
// ---------------------------------------------------------

void misturar(String nome, [String? x]) {

  // nome -> obrigatório
  // x    -> opcional

}


// Mesmo conceito da função anterior.
void misturar2(String nome, [String? x]) {

  // nome -> obrigatório
  // x    -> opcional

}


// ---------------------------------------------------------
// PARÂMETROS NOMEADOS OPCIONAIS
// ---------------------------------------------------------

void misturar3({
  String? x2,
  String? x,
}) {

  // Os dois parâmetros são:
  //
  // x2 -> opcional
  // x  -> opcional
  //
  // Como não possuem "required",
  // podemos chamar:
  //
  // misturar3();
  //
  // ou:
  //
  // misturar3(x: 'teste');
  //
  // ou:
  //
  // misturar3(x2: 'A', x: 'B');
}