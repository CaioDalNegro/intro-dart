void main() {
  // Loop tradicional usando um contador.
  // int i = 0 -> começa o contador em 0.
  // i < 5 -> continua enquanto i for menor que 5.
  // i++ -> aumenta o contador em 1 a cada repetição.
  //
  // Resultado: 0, 1, 2, 3, 4
  for (int i = 0; i < 5; i++) {
    print('Numero: $i');
  }

  // Cria uma lista de Strings contendo três frutas.
  List<String> frutas = ['Maçã', 'Banana', 'Laranja'];

  // Percorre a lista utilizando o índice.
  //
  // frutas.length -> quantidade de elementos da lista.
  // frutas[i] -> acessa o elemento que está na posição i.
  //
  // Como a lista possui 3 elementos:
  // índice 0 -> Maçã
  // índice 1 -> Banana
  // índice 2 -> Laranja
  for (int i = 0; i < frutas.length; i++) {
    print(frutas[i]);
  }

  // For-in:
  // Percorre diretamente cada elemento da lista.
  //
  // A variável "fruta" recebe uma fruta por vez.
  // É uma forma mais simples quando você não precisa do índice.
  for (String fruta in frutas) {
    print(fruta);
  }

  // map() percorre a lista e TRANSFORMA cada elemento.
  //
  // Para cada fruta, adicionamos o texto "Fruta: ".
  //
  // Exemplo:
  // "Maçã"     -> "Fruta: Maçã"
  // "Banana"   -> "Fruta: Banana"
  // "Laranja"  -> "Fruta: Laranja"
  //
  // O map() gera uma nova sequência com os valores transformados.
  //
  // forEach(print) percorre o resultado e imprime cada elemento.
  var frutasalteradas = frutas
      .map((String fruta) {
        return 'Fruta: $fruta';
      })
      .forEach(print);

  // Cria um Map.
  //
  // Map funciona no formato:
  // CHAVE -> VALOR
  //
  // Neste caso:
  // Nome -> Idade
  Map<String, int> idades = {
    'Luana': 42,
    'Rodrigo': 42,
    'Guilherme': 5,
    'Joao': 65,
  };

  // Percorre todas as CHAVES do Map.
  //
  // idades.keys -> retorna as chaves:
  // Luana, Rodrigo, Guilherme, Joao
  for (String chave in idades.keys) {
    print('Chaves: $chave');

    // Usa a chave para acessar o valor correspondente.
    //
    // idades[chave]
    //
    // Exemplo:
    // chave = "Luana"
    // idades["Luana"] -> 42
    print('Valor da chave $chave: ${idades[chave]}');
  }

  // Percorre todos os VALORES do Map.
  //
  // idades.values -> 42, 42, 5, 65
  for (int idade in idades.values) {
    print(idade);
  }
}