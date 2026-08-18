import 'dart:io';

void main() {
  stdout.write('Digite um número: ');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    double? numero = double.tryParse(entrada);

    if (numero != null) {
      if (numero > 0) {
        print('O valor $numero é positivo.');
      } else if (numero < 0) {
        print('O valor $numero é negativo.');
      } else {
        print('O valor é zero (neutro).');
      }
    } else {
      print('Erro: Por favor, digite um número válido.');
    }
  }
}
