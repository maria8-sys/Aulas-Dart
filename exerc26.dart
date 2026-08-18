import 'dart:io';

void main() {
  int pares = 0;
  int impares = 0;
  int numero = 0;

  print("--- Contador de Pares e Ímpares ---");
  print("Digite números inteiros (ou um número negativo para sair):");

  while (true) {
    stdout.write("Digite um número: ");

    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      numero = int.tryParse(entrada) ?? 0;

      if (numero < 0) {
        break;
      }

      if (numero % 2 == 0) {
        pares++;
      } else {
        impares++;
      }
    }
  }

  print("\n--- Resultado Final ---");
  print("Quantidade de números pares: $pares");
  print("Quantidade de números ímpares: $impares");
}
