import 'dart:io';

void main() {
  print('Digite uma letra (F para Feminino ou M para Masculino):');

  String? entrada = stdin.readLineSync()?.toUpperCase();

  if (entrada == 'F') {
    print('F - Feminino');
  } else if (entrada == 'M') {
    print('M - Masculino');
  } else {
    print('Sexo Inválido');
  }
}
