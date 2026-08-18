import 'dart:io';

void main() {
  print('--- Calculadora Dart ---');

  stdout.write('Digite o primeiro número: ');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  if (num1 == null || num2 == null) {
    print('Erro: Entrada inválida. Por favor, digite apenas números.');
    return;
  }

  print('\nEscolha a operação:');
  print('1 - Soma (+)');
  print('2 - Subtração (-)');
  print('3 - Multiplicação (*)');
  print('4 - Divisão (/)');
  stdout.write('Opção: ');
  String? operacao = stdin.readLineSync();

  double resultado;

  switch (operacao) {
    case '+':
      resultado = num1 + num2;
      print('\nResultado: $num1 + $num2 = $resultado');
      break;
    case '-':
      resultado = num1 - num2;
      print('\nResultado: $num1 - $num2 = $resultado');
      break;
    case '*':
      resultado = num1 * num2;
      print('\nResultado: $num1 * $num2 = $resultado');
      break;
    case '/':
      if (num2 != 0) {
        resultado = num1 / num2;
        print('\nResultado: $num1 / $num2 = $resultado');
      } else {
        print('\nErro: Não é possível realizar divisão por zero.');
      }
      break;
    default:
      print('\nErro: Operação inválida.');
  }
}
