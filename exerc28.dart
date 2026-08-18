import 'dart:io';

void main() {
  print('Digite um número inteiro para calcular o fatorial:');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int numero = int.parse(entrada);

    if (numero < 0) {
      print('Não existe fatorial de números negativos.');
    } else if (numero == 0 || numero == 1) {
      print('$numero! = 1');
    } else {
      int fatorial = 1;
      String expressao = '$numero! = ';

      for (int i = numero; i >= 1; i--) {
        fatorial *= i;

        expressao += i.toString();
        if (i > 1) {
          expressao += '.';
        }
      }

      print('$expressao = $fatorial');
    }
  }
}
