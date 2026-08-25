void main() {
  List<int> numerosImpares = [];

  for (int i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      numerosImpares.add(i);
    }
  }

  // Exibe o vetor resultante
  print("Números ímpares até 100:");
  print(numerosImpares);
}
