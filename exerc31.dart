import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro N: ');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    int? n = int.tryParse(entrada);

    if (n != null && n >= 2) {
      print('Números primos entre 1 e $n:');

      for (int i = 2; i <= n; i++) {
        if (ehPrimo(i)) {
          stdout.write('$i ');
        }
      }
      print('');
    } else {
      print('Por favor, digite um número inteiro maior ou igual a 2.');
    }
  }
}

bool ehPrimo(int numero) {
  for (int i = 2; i <= numero / 2; i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}
