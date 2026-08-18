import 'dart:io';

void main() {
  stdout.write('Digite o valor do depósito: R\$ ');
  double? deposito = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Digite a taxa de juros (em %): ');
  double? taxa = double.tryParse(stdin.readLineSync() ?? '');

  if (deposito != null && taxa != null) {
    double rendimento = deposito * (taxa / 100);

    double valorTotal = deposito + rendimento;

    print('\n--- Resultado ---');
    print('Valor do depósito: R\$ ${deposito.toStringAsFixed(2)}');
    print('Valor do rendimento: R\$ ${rendimento.toStringAsFixed(2)}');
    print(
      'Valor total após o rendimento: R\$ ${valorTotal.toStringAsFixed(2)}',
    );
  } else {
    print('Erro: Por favor, insira valores numéricos válidos.');
  }
}
