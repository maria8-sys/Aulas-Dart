import 'dart:io';

void main() {
  print('Digite o número de termos (n) da série de Fibonacci:');

  String? input = stdin.readLineSync();
  int n = int.tryParse(input ?? '0') ?? 0;

  if (n <= 0) {
    print('Por favor, insira um número maior que zero.');
  } else {
    gerarFibonacci(n);
  }
}

void gerarFibonacci(int n) {
  int a = 0;
  int b = 1;

  print('Série de Fibonacci até o $n-ésimo termo:');

  for (int i = 1; i <= n; i++) {
    stdout.write('$b ');

    int proximo = a + b;
    a = b;
    b = proximo;
  }
  print('');
}
