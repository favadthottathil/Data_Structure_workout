void main() {
  var s = 'a1c1e1';

  List<String> list = s.split('');



  for (var i = 0; i < list.length; i++) {
    if ((i + 1) % 2 == 0) {
      int value = list[i - 1].codeUnitAt(0);

      value = value + int.parse(list[i]);

      list[i] = String.fromCharCode(value);
      
    }
  }
  print(list.join());
}
