void main() {
  String name = 'youcandoit';

  List letters = name.split('');

  int i = 0;
  int j = letters.length-1;

  while (i < j) {
    if (letters[i] == 'a' || letters[i] == 'e' || letters[i] == 'i' || letters[i] == 'o' || letters[i] == 'u') {
      if (letters[j] == 'a' || letters[j] == 'e' || letters[j] == 'i' || letters[j] == 'o' || letters[j] == 'u') {
        String temp = letters[i];
        letters[i] = letters[j];
        letters[j] = temp;
        i++;
        j--;
      } else {
        j--;
      }
    } else {
      i++;
    }
  }
  print(letters.join());
}
