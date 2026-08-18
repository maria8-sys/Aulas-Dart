import 'dart:io';

void decomporNumero(int numero) {
  if (numero < 0 || numero >= 1000) {
    print("O número deve ser menor que 1000.");
    return;
  }

  int centenas = (numero ~/ 100);
  int dezenas = (numero % 100) ~/ 10;
  int unidades = (numero % 10);

  List<String> partes = [];

  if (centenas > 0) {
    partes.add("$centenas ${centenas == 1 ? 'centena' : 'centenas'}");
  }

  if (dezenas > 0) {
    partes.add("$dezenas ${dezenas == 1 ? 'dezena' : 'dezenas'}");
  }

  if (unidades > 0) {
    partes.add("$unidades ${unidades == 1 ? 'unidade' : 'unidades'}");
  }

  String resultado = "";
  if (partes.length == 1) {
    resultado = partes[0];
  } else if (partes.length == 2) {
    resultado = "${partes[0]} e ${partes[1]}";
  } else if (partes.length == 3) {
    resultado = "${partes[0]}, ${partes[1]} e ${partes[2]}";
  }

  print("$numero = $resultado");
}

void main() {
  List<int> testes = [
    326,
    300,
    100,
    320,
    310,
    305,
    301,
    101,
    311,
    111,
    25,
    20,
    10,
    21,
    11,
    1,
    7,
    16,
  ];

  for (int numero in testes) {
    decomporNumero(numero);
  }
}
