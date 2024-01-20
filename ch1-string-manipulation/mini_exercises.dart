/// 1- take multiple strings, such as text below and split it into a list of single lines,
/// Hint: split on the neline character
/// France
/// Usa
/// Germany
/// china
/// mexico

void main() {
  final txt = """ 
France 
Usa
Germany
china
mexico""";

  final singleLine = txt.split('\n');
  print(singleLine);
  print(txt);

  /// 2- find an emoji to replace :] within the following text
  /// How's the dart book going :]

  final txt2 = "How's the dart book going :]";

  final replacedTxt2 = txt2.replaceAll(':]', '\u{1F44D}');
  print(replacedTxt2);

  /// 3- use string buffer to build following string
  /// *********
  /// * *******
  /// ** ******
  /// *** *****
  /// **** ****
  /// ***** ***
  /// ****** **
  /// ******* *
  /// *********
  /// Hint use loop inside a loop

  final buffer = StringBuffer();
  int numRows = 10;

  for (var i = 1; i <= numRows; i++) {
    for (var j = 1; j <= numRows; j++) {
      if (i != j) {
        buffer.write("*");
      } else if (i == 1 && j == 1) {
        buffer.write("*");
      } else if (i == numRows && j == numRows) {
        buffer.write("*");
      } else {
        buffer.write(" ");
      }
    }
    buffer.writeln();
  }
  print(buffer);

  /// using Regex validate that a credit card number contains only number and is exactly 16 digits long

  final creditCard = "1234567890123456"; // change this to check

  final isOnlyNums = RegExp(r'^[0-9]+$');
  final is16Nums = RegExp(r'^\d{16}$');


  if (!creditCard.contains(isOnlyNums)) {
    print("credit card must be numbers only");
  } 
  else if (!creditCard.contains(is16Nums)) {
    print("credit card must be 16 number");
    } else {
      print("valid credit card");
    }
}
