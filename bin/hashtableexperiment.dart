void main() {
  HashTable hashTable = HashTable(5);

  hashTable.set('name', 'favad');
  hashTable.set('age', 25);
  hashTable.set('mane', 'salah');
  hashTable.set('hdd', 45);
  // print(hashTable.get('hdd'));
  hashTable.delete('mane');

  hashTable.display();
}

class HashTable {
  List<List> list = [];

  HashTable(int size) {
    for (var i = 0; i < size; i++) {
      list.add([]);
    }
  }

  int hash(String key) {
    int total = 0;
    for (var i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }

    return total % list.length;
  }

  set(key, value) {
    int index = hash(key);

    for (var pair in list[index]) {
      if (pair[0] == key) {
        pair[1] = value;
        return;
      }
    }

    list[index].add([
      key,
      value
    ]);
  }

  get(key) {
    int index = hash(key);

    if (list[index] != null) {
      for (var pair in list[index]) {
        if (pair[0] == key) {
          return pair[1];
        }
      }
    }

    return 'invalid key';
  }

  delete(key) {
    int index = hash(key);
    list[index].removeWhere((pair) => pair[0] == key);
  }

  display() {
    for (var i = 0; i < list.length; i++) {
      if (list[i].isNotEmpty) {
        print(list[i]);
      }
    }
  }
}
