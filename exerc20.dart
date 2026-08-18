import 'dart:io';

void main() {
  print("Em que turno você estuda?");
  print("Digite M-matutino, V-vespertino ou N-noturno:");

  String? entrada = stdin.readLineSync()?.toUpperCase();

  switch (entrada) {
    case 'M':
      print("Bom Dia!");
      break;
    case 'V':
      print("Boa Tarde!");
      break;
    case 'N':
      print("Boa Noite!");
      break;
    default:
      print("Valor Inválido!");
  }
}
