void main(List<String> args) {
  int n = 10;
  int k = 10;

  int sum = 0;

  while (n > 0) {
    sum += n % k;
    n = n ~/ k;
  }
  print(sum);
}
