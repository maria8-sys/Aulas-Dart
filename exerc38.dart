import 'dart:io';

void main() {
  List<List<double>> matrizNotas = List.generate(4, (_) => List.filled(5, 0.0));
  List<String> nomesAlunos = [];

  for (int i = 0; i < 4; i++) {
    print('Digite o nome do ${i + 1}º aluno:');
    nomesAlunos.add(stdin.readLineSync()!);

    double soma = 0;
    for (int j = 0; j < 4; j++) {
      print('Digite a ${j + 1}ª nota do aluno ${nomesAlunos[i]}:');
      double nota = double.parse(stdin.readLineSync()!);

      matrizNotas[i][j] = nota;
      soma += nota;
    }

    matrizNotas[i][4] = soma / 4;
  }

  print('\n--- Boletim Final ---');
  for (int i = 0; i < 4; i++) {
    print('Aluno: ${nomesAlunos[i]}');
    print('Notas: ${matrizNotas[i].sublist(0, 4)}');
    print('Média: ${matrizNotas[i][4].toStringAsFixed(2)}');
    print('----------------------');
  }
}
