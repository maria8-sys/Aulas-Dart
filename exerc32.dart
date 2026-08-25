void main() {
  double populacaoA = 80000;
  double populacaoB = 200000;

  double taxaA = 0.03;
  double taxaB = 0.015;

  int anos = 0;

  while (populacaoA < populacaoB) {
    populacaoA += populacaoA * taxaA;
    populacaoB += populacaoB * taxaB;
    anos++;
  }

  print(
    "Serão necessários $anos anos para que a população do país A iguale ou ultrapasse a do país B.",
  );
  print("População final de A: ${populacaoA.toStringAsFixed(0)}");
  print("População final de B: ${populacaoB.toStringAsFixed(0)}");
}
