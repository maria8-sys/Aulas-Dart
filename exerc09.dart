import 'dart:io';

void main() {
  print('Digite um número inteiro:');
  String? numeroTexto = stdin.readLineSync();

  int numero = int.parse(numeroTexto!);

  if (numero % 5 == 0) {
    print('O número $numero é múltiplo de 5.');
  } else {
    print('O número $numero não é múltiplo de 5.');
  }
}