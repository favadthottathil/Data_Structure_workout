void main(List<String> args) {
  print(thousandSeparator(1234));
}

String thousandSeparator(int n) {
  String number = n.toString();

  int temp = number.length - 3;

  List numberList = [];

  numberList = number.split('');

  for (int i = number.length-1; i > 0; i--) {
    if (i == temp) {
      numberList.insert(i, '.');
      temp = temp - 3;
    }
  }
  number = numberList.join('');

  return number;
}
