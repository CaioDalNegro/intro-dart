void main() {
  // Cria uma lista de Strings contendo três frutas.
  //
  // List<String> significa:
  // "Esta lista só pode armazenar valores do tipo String."
  List<String> frutas = ['Maçã', 'Banana', 'Laranja'];

  // Imprime toda a lista.
  // O $frutas transforma a lista em texto.
  print('Frutas: $frutas');

  // Acessa um elemento específico da lista através do índice.
  //
  // IMPORTANTE:
  // Listas começam no índice 0:
  // índice 0 -> Maçã
  // índice 1 -> Banana
  // índice 2 -> Laranja
  print('Acessando a fruta banana: ${frutas[1]}');

  // Retorna a quantidade de elementos existentes na lista.
  print(frutas.length);

  // Adiciona um novo elemento no final da lista.
  frutas.add('Kiwi');

  print('Frutas: $frutas');

  // remove() recebe o VALOR que queremos remover.
  //
  // Aqui estamos tentando remover o valor "1".
  // Porém, nossa lista é List<String>, então ela não possui
  // o valor inteiro 1.
  //
  // Portanto, isso não remove a Banana.
  frutas.remove(1);

  print('Frutas: $frutas');

  // Remove o elemento que possui exatamente o valor "Kiwi".
  frutas.remove('Kiwi');

  print('Frutas: $frutas');

  // Insere um elemento em uma determinada posição.
  //
  // O primeiro argumento é o índice.
  // O segundo argumento é o valor.
  //
  // Aqui estamos colocando "Banana" no índice 1.
  frutas.insert(1, 'Banana');

  print('Frutas: $frutas');


  // =========================================================
  // MAP
  // =========================================================

  // Map representa uma estrutura de CHAVE -> VALOR.
  //
  // Neste caso:
  // String = chave (nome)
  // int = valor (idade)
  //
  // Exemplo:
  // 'Luana' -> 42
  Map<String, int> idades = {
    'Luana': 42,
    'Rodrigo': 42,
    'Guilherme': 5,
    'Joao': 65,
  };

  // Acessa um valor através da sua chave.
  //
  // idades['Rodrigo']
  // significa:
  // "Encontre a chave Rodrigo e me devolva o valor associado a ela."
  print('Idade de Rodrigo é: ${idades['Rodrigo']} anos');

  // Verifica se existe uma determinada CHAVE no Map.
  //
  // Retorna true ou false.
  //
  // ATENÇÃO:
  // Apenas chamar containsKey() não mostra o resultado.
  // Precisamos usar o retorno.
  print(idades.containsKey('Rodrigo'));

  // Verifica se existe determinado VALOR dentro do Map.
  print(idades.containsValue(42));

  // Retorna a quantidade de pares chave -> valor.
  print(idades.length);

  // Retorna todas as chaves do Map.
  print(idades.keys);

  // Retorna todos os valores do Map.
  print(idades.values);


  // addAll() adiciona vários pares chave -> valor.
  //
  // Como "Rodrigo" já existe, seu valor será atualizado
  // de 42 para 70.
  idades.addAll({
    'Rodrigo': 70,
  });

  print(idades);


  // putIfAbsent() adiciona uma chave SOMENTE SE ela ainda não existir.
  //
  // Como "Rodrigo" já existe, nada será alterado.
  //
  // Portanto, Rodrigo continuará com 70.
  idades.putIfAbsent('Rodrigo', () => 55);

  print(idades);
}