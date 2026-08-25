import 'dart:io';

void main() {
  List<String> alunos = [];

  print("--- Cadastro de Alunos ---");
  print("Digite os nomes dos alunos (digite 'sair' para finalizar):");

  while (true) {
    stdout.write("Nome do aluno: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.toLowerCase() == 'sair') {
      break;
    }

    if (entrada.trim().isNotEmpty) {
      alunos.add(entrada.trim());
    }
  }

  if (alunos.isEmpty) {
    print("Nenhum aluno foi cadastrado.");
  } else {
    alunos.sort((a, b) => a.compareTo(b));

    print("\n--- Lista de Alunos Ordenada ---");
    for (var i = 0; i < alunos.length; i++) {
      print("${i + 1}º: ${alunos[i]}");
    }
  }
}
