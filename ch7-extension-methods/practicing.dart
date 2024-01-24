void main() {
  // String encode(String input) {
  //   final output = StringBuffer();
  //   for (final codePoint in input.runes) {
  //     output.writeCharCode(codePoint + 1);
  //   }
  //   return output.toString();
  // }

  // final original = 'abc';
  // final secret = encode(original);
  // print(secret);
  final original2 = "I am great software developer";
  final secret2 = original2.encoded;
  final revealed = secret2.decoded;
  print(secret2);
  print(revealed);
}

extension on String {
  String get encoded => _code(2);
  String get decoded => _code(-2);

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in this.runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}