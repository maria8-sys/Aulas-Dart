String mixUp(String a, String b) {
  String aPrefix = a.substring(0, 2);
  String bPrefix = b.substring(0, 2);

  String aSuffix = a.substring(2);
  String bSuffix = b.substring(2);

  String newA = bPrefix + aSuffix;
  String newB = aPrefix + bSuffix;

  return '$newA $newB';
}

void main() {
  print(mixUp('mix', 'pod'));
  print(mixUp('dog', 'dinner'));
}
