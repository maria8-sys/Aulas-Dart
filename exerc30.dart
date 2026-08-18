import 'dart:io';

void main() {
  print("Digite uma palavra ou frase para verificar se é um palíndromo:");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (ehPalindromo(entrada)) {
      print("A sequência '$entrada' É um palíndromo.");
    } else {
      print("A sequência '$entrada' NÃO é um palíndromo.");
    }
  }
}

bool ehPalindromo(String texto) {
  String limpa = texto.toUpperCase().replaceAll(RegExp(r'[^A-Z0-9]'), '');

  String invertida = limpa.split('').reversed.join('');

  print("Texto processado para comparação: $limpa");
  print("Texto invertido: $invertida");

  return limpa == invertida;
}
