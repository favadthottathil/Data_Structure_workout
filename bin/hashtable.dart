void main() {
  HashTable table = HashTable(1);

  table.set('1', 'favad');

  table.set('2', 'fahad');

  table.set('name', 'hello');

  table.set('mane', 'how are you');

  table.delete('name');

  print(table.get('2'));

  // table.display();
}

class HashTable {
  List<List> table = [];
  HashTable(int size) {
    table = List<List>.filled(size, []);
  }

  hash(String key) {
    int hash = 0;

    for (var i = 0; i < key.length; i++) {
      hash = hash + key.codeUnitAt(i) * i % table.length;
    }

    return hash;
  }

  set(String key, dynamic value) {
    int index = hash(key);

    table[index].add([
      key,
      value
    ]);
  }

  get(String key) {
    int index = hash(key);

    List bucket = table[index];

    for (var i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == key) {
        return bucket[i][1];
      }
    }
  }

  delete(String key) {
    int index = hash(key);

    List bucket = table[index];

    for (var i = 0; i < bucket.length; i++) {
      if (bucket[i][0] == key) {
        bucket.removeAt(i);
        return;
      }
    }
  }

  display() {
    for (var i = 0; i < table.length; i++) {
      print(table[i]);
    }
  }
}