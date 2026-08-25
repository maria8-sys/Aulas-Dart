import 'dart:io';

String combinarStrings(String a, String b) {
  int calcularPontoDivisao(String s) {
    return (s.length / 2).ceil();
  }

  int pontoA = calcularPontoDivisao(a);
  String aFrente = a.substring(0, pontoA);
  String aTras = a.substring(pontoA);

  int pontoB = calcularPontoDivisao(b);
  String bFrente = b.substring(0, pontoB);
  String bTras = b.substring(pontoB);

  return '$aFrente$bFrente$aTras$bTras';
}

void main() {
  print("Digite a primeira palavra:");
  String? a = stdin.readLineSync();

  print("Digite a segunda palavra:");
  String? b = stdin.readLineSync();

  if (a != null && b != null) {
    String resultado = combinarStrings(a, b);
    print("Resultado: $resultado");
  } else {
    print("Entrada inválida.");
  }
}
