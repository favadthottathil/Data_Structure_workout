class HashTable {
  List<List<_KeyValuePair>>? _buckets;
  int? _capacity;

  HashTable(int capacity) {
    _capacity = capacity;
    _buckets = List<List<_KeyValuePair>>.generate(_capacity!, (index) => [],);
  }

  int _hash(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i)) % _capacity!;
    }
    return hash;
  }

  void put(String key, int value) {
    int index = _hash(key);
    // Check if the key already exists in the bucket
    for (var pair in _buckets![index]) {
      if (pair.key == key) {
        pair.value = value; // Update the value if the key exists
        return;
      }
    }
    // If the key doesn't exist, add a new key-value pair to the bucket
    _buckets?[index].add(_KeyValuePair(key, value));
  }

   get(String key) {
    int index = _hash(key);
    // Search for the key in the bucket
    for (var pair in _buckets![index]) {
      if (pair.key == key) {
        return pair.value; // Return the value if the key is found
      }
    }
    return null; // Return null if the key is not found
  } 

  void remove(String key) {
    int index = _hash(key);
    _buckets![index].removeWhere((pair) => pair.key == key);
  }

  void printTable() {
    for (int i = 0; i < _capacity!; i++) {
      print('Bucket $i:');
      for (var pair in _buckets![i]) {
        print('  ${pair.key}: ${pair.value}');
      }
    }
  }
}

class _KeyValuePair {
  String key;
  int value;

  _KeyValuePair(this.key, this.value);
}

void main() {
  HashTable myHashTable = HashTable(10);

  myHashTable.put('Alice', 25);
  myHashTable.put('Bob', 30);
  myHashTable.put('Charlie', 22);

  myHashTable.printTable();

  // print('Bob\'s age: ${myHashTable.get('Bob')}');

  // myHashTable.put('Charlie', 23);

  // myHashTable.remove('Alice');

  // print('After modifications:');
  // myHashTable.printTable();
}
