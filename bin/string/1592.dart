void main() {
  reorderSpaces("  hello");
}

reorderSpaces(String text) {
  int j = 0;

  int i = 0;

  List sublist = [];

  List<List> arr = [];

  int count = 0;

  int k = 0;

  String result = '';

  while (i < text.length && j < text.length) {
    i = j;
    if (text[i] == ' ') {
      if (sublist.isNotEmpty) {
        arr.insert(k, sublist);
        k++;

        sublist = [];
      }

      i++;
      j++;
      count++;
      // i = j;
    } else {
      for (var k = i; k <= j; k++) {
        sublist.add(text[k]);
      }
      j++;
    }
  }
  if (sublist.isNotEmpty) {
    arr.insert(k, sublist);
    k++;
  }
  print(arr);
  print(count);

  int length = arr.length - 1;

  if (length == 0) {
    length = 1;
  }

  int divide = (count ~/ length);

  for (var list in arr) {
    for (var i in list) {
      result += i;
    }

    if (list == arr.last) {
      break;
    }

    for (var i = 0; i < divide; i++) {
      result += '@';
      count--;
    }
  }

  while (count > 0) {
    result += '*';
    count--;
  }

  // print(arr);
  // print(count);

  print(result);
}
