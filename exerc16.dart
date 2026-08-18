import 'dart:io';

void main() {
  print('Digite o salário atual do funcionário:');
  String? entradaSalario = stdin.readLineSync();

  print('Digite o percentual de aumento (ex: 15 para 15%):');
  String? entradaPercentual = stdin.readLineSync();

  if (entradaSalario != null && entradaPercentual != null) {
    double salario = double.parse(entradaSalario);
    double percentual = double.parse(entradaPercentual);

    double valorAumento = salario * (percentual / 100);
    double novoSalario = salario + valorAumento;

    print('\n--- Resultado ---');
    print('Salário original: R\$ ${salario.toStringAsFixed(2)}');
    print('Valor do aumento: R\$ ${valorAumento.toStringAsFixed(2)}');
    print('Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}');
  } else {
    print('Erro: Entrada de dados inválida.');
  }
}
