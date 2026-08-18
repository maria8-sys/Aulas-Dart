import 'dart:io';

void main() {
  stdout.write('Digite o salário do funcionário: R\$ ');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    double salarioAtual = double.tryParse(entrada) ?? 0.0;

    double aumento = salarioAtual * 0.25;
    double novoSalario = salarioAtual + aumento;

    print('\n--- Resultado ---');
    print('Salário atual: R\$ ${salarioAtual.toStringAsFixed(2)}');
    print('Aumento recebido: R\$ ${aumento.toStringAsFixed(2)}');
    print('Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}');
  } else {
    print('Entrada inválida.');
  }
}
