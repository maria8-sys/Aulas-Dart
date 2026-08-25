import 'dart:io';

void main() {
  List<double> notas = [];
  double soma = 0;

  for (int i = 0; i < 4; i++) {
    stdout.write('Digite a nota ${i + 1}: ');
    double? nota = double.tryParse(stdin.readLineSync()!);

    if (nota != null) {
      notas.add(nota);
      soma += nota;
    } else {
      print('Entrada inválida. Tente novamente.');
      i--;
    }
  }

  double media = soma / notas.length;

  print('\n--- Resultados ---');
  print('A média das notas é: ${media.toStringAsFixed(2)}');

  print('Notas maiores que a média:');
  bool encontrou = false;
  for (double nota in notas) {
    if (nota > media) {
      print(nota.toStringAsFixed(2));
      encontrou = true;
    }
  }

  if (!encontrou) {
    print('Nenhuma nota foi maior que a média.');
  }
}
