import 'dart:io';

Map getEncryption15Key() {
  const List<String> alphabet = const [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  const int change = 10;
  Map<String, String> code = {};

  for (var i = 0; i < alphabet.length; i++) {
    if (i < change) {
      code[alphabet[i]] = alphabet[i + change];
      code[alphabet[i].toUpperCase()] = alphabet[i + change].toUpperCase();
    } else {
      code[alphabet[i]] = alphabet[i - change];
      code[alphabet[i].toUpperCase()] = alphabet[i - change].toUpperCase();
    }
  }
  return code;
}

void main() {
  Map encryptCode = getEncryption15Key();
  print('Enter the text you want to encrypt');
  String? original = stdin.readLineSync();
  String changes = "";
  for (String text in original!.split('')) {
    if (encryptCode.containsKey(text)) {
      changes += encryptCode[text];
    } else {
      changes += text;
    }
  }
  print(changes);
}
