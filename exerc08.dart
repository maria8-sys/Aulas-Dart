import 'dart:io';

void main() {
  print('Digite uma letra:');
  String? letra = stdin.readLineSync();

  if (letra != null && letra.length == 1) {
    String letraMinuscula = letra.toLowerCase();

    if (letraMinuscula == 'a' ||
        letraMinuscula == 'e' ||
        letraMinuscula == 'i' ||
        letraMinuscula == 'o' ||
        letraMinuscula == 'u') {
      print('A letra $letra é uma vogal.');
    } else {
      print('A letra $letra é uma consoante.');
    }
  } else {
    print('Digite apenas uma letra válida.');
  }
}