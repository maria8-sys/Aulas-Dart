import 'dart:io';

void main() {
  print('Digite um número inteiro positivo:');

  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? '');

  if (number != null && number > 0) {
    print('\nResultado para o número $number:');
    print(fizzBuzz(number));
  } else {
    print('Entrada inválida. Por favor, digite um número inteiro positivo.');
  }
}

String fizzBuzz(int n) {
  if (n % 3 == 0 && n % 5 == 0) {
    return "FizzBuzz";
  } else if (n % 3 == 0) {
    return "Fizz";
  } else if (n % 5 == 0) {
    return "Buzz";
  } else {
    return n.toString();
  }
}
