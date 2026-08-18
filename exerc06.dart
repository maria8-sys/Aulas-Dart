import 'dart:io';

void main() {
  print('Digite o primeiro número:');
  String? numero1Texto = stdin.readLineSync();
  double numero1 = double.parse(numero1Texto!);

  print('Digite o segundo número:');
  String? numero2Texto = stdin.readLineSync();
  double numero2 = double.parse(numero2Texto!);

  print('Escolha a operação (Soma ou Subtração):');
  String? operacao = stdin.readLineSync();

  if (operacao == 'soma' || operacao == 'soma') {
    double resultado = numero1 + numero2;
    print('Resultado da soma: $resultado');
  } else if (operacao == 'Subtração' || operacao == 'Subtração' || operacao == 'Subtração' || operacao == 'Subtração') {
    double resultado = numero1 - numero2;
    print('Resultado da subtração: $resultado');
  } else {
    print('Operação inválida!');
  }
}