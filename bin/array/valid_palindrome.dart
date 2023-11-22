void main() {
  String word = "A man, a plan, a canal: Panama";

  var string = word.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase();
  var rString = string.split('').reversed.join('');

  print(string);
  print(rString);

  if (string == rString) {
    print('true');
  } else {
    print('false');
  }
}



