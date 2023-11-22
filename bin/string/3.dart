void main() {
  String string = 'aab';

  int maxcount = 0;

  int count = 0;
  List duplicate = [];

  for (var i = 0; i < string.length; i++) {
    if (!duplicate.contains(string[i])) {
      duplicate.add(string[i]);
      count++;
      if (count > maxcount) {
        maxcount = count;
      }
    } else {
      int index = duplicate.indexOf(string[i]);
      duplicate.removeRange(0, index+1);
      duplicate.add(string[i]);
      count = duplicate.length;
    }
  }

  print(maxcount);
}
