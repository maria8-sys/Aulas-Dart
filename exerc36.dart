import 'dart:io';

void main() {
  print('Digite uma palavra:');
  String entrada = stdin.readLineSync() ?? '';

  List<String> consoantes = [];

  String vogais = 'aeiouAEIOU';

  for (int i = 0; i < entrada.length; i++) {
    String letra = entrada[i];

    if (RegExp(r'[a-zA-Z]').hasMatch(letra) && !vogais.contains(letra)) {
      consoantes.add(letra);
    }
  }

  // Exibimos o resultado
  print('\nConsoantes encontradas:');
  print(consoantes);
  print('Total de consoantes: ${consoantes.length}');
}
