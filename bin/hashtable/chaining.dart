void main() {
  HashTable hashTable = HashTable(3);

  hashTable.put('favad', 22);

  hashTable.put('fahad', 25);

  hashTable.put('kallayi', 22);

  // hashTable.display();
}

class HashTable {
  List<List<KeyValuePair>>? bucket;

  int size;

  HashTable(this.size) {
    bucket = List<List<KeyValuePair>>.generate(
      size,
      (index) => [],
    );
  }

  hashing(String key) {
    int result = 0;

    for (var i = 0; i < key.length; i++) {
      result = (result + key.codeUnitAt(i)) % size;
    }

    return result;
  }

  put(String key, int value) {
    int index = hashing(key);

    for (var pair in bucket![index]) {
      if (pair.key == key) {
        pair.value = value;
        return;
      }
    }

    bucket![index].add(KeyValuePair(key, value));
  }

  get(String key) {
    int index = hashing(key);

    for (var pair in bucket![index]) {
      if (pair.key == key) {
        print(pair.value);
        return;
      }
    }
    print('no value found');
    return;
  }

  delete(String key) {
    int index = hashing(key);

    bucket![index].removeWhere((element) => element.key == key);
  }

  display() {
    for (var i = 0; i < size; i++) {
      print('bucket $i');
      for (var pair in bucket![i]) {
        print(' key : ${pair.key} : value ${pair.value}');
      }
    }
  }
}

class KeyValuePair {
  String key;

  int value;

  KeyValuePair(this.key, this.value);
}
