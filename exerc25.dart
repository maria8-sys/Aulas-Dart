import 'dart:io';

void main() {
  stdout.write('Digite o primeiro número inteiro: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número inteiro: ');
  int num2 = int.parse(stdin.readLineSync()!);

  int inicio = num1 < num2 ? num1 : num2;
  int fim = num1 > num2 ? num1 : num2;

  print('\nNúmeros no intervalo entre $inicio e $fim:');

  for (int i = inicio; i <= fim; i++) {
    stdout.write('$i ');
  }

  print('');
}
