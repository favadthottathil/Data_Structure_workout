// Final Prices With a Special Discount in a Shop

void main() {
  int k = 0;

  List prices = [
    8,
    4,
    6,
    2,
    3
  ];

  for (var i = 0; i < prices.length - 1; i++) {
    for (var j = i + 1; j < prices.length; j++) {
                         if (prices[i] >= prices[j]) {
        prices[k++] = prices[i] - prices[j];
        break;
      }
    }
  }
  print(prices);
}
