void main() {
  String number = '4206';

  // while (number.isNotEmpty) {
  int value = int.parse(number[number.length - 1]);

  String res = result(value, number);

  //   if (value % 2 == 0) {
  //     number = number.substring(0, number.length - 1);
  //   } else {
  //     break;
  //   }
  // }

  if (res.isEmpty) {
    print('empty');
  }

  print(res);
}

String result(int value, String number) {
  if (value % 2 == 0) {
    number = number.substring(0, number.length - 1);

    if (number.isEmpty) {
      return 'empty';
    }

    int temp = int.parse(number[number.length - 1]);

    result(temp, number);
  } 
    return number;
  
}
