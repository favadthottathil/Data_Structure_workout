void main() {
  String a = 'favad';

  Map map = {};

  List arr = [
    'a',
    'e',
    'i',
    'o',
    'u'
  ];

  for (var i = 0; i < a.length; i++) {
    int count = 0;
    for (var j = 0; j < arr.length; j++) {
      if (a[i] == arr[j]) {
        count++;
      }
    }

    if (map.containsKey(a[i])) {
      if (count > 0) {
        map[a[i]] += count;
      }
    } else {
      if (count > 0) {
        map[a[i]] = count;
      }
    }
  }

  print(map);
}
