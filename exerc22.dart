import 'dart:io';
import 'dart:math';

void main() {
  print("--- Calculadora de Equação do 2º Grau (Bhaskara) ---");

  stdout.write("Digite o valor de a: ");
  double? a = double.tryParse(stdin.readLineSync()!);

  if (a == null || a == 0) {
    print("O coeficiente 'a' não pode ser 0. Encerrando o programa.");
    return;
  }

  stdout.write("Digite o valor de b: ");
  double? b = double.tryParse(stdin.readLineSync()!);
  b ??= 0;

  stdout.write("Digite o valor de c: ");
  double? c = double.tryParse(stdin.readLineSync()!);
  c ??= 0;

  if (b != 0 && c != 0) {
    print("Equação classificada como: Completa.");
  } else {
    print("Equação classificada como: Incompleta.");
  }

  double delta = pow(b, 2) - (4 * a * c);
  print("Valor de Delta: $delta");

  if (delta < 0) {
    print("Como delta é negativo, a equação não possui raízes reais.");
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print("Como delta é zero, a equação possui apenas uma raiz real: x = $x");
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);

    print("Como delta é positivo, a equação possui duas raízes reais:");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}
