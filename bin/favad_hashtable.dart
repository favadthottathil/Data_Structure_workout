void main() {
  HashTable table = HashTable(50);
  table.set('founder', 'shamil');
  table.set('ceo', 'basim');
  table.set('leadinghead', 'diyouf');
  table.set('techhead', 'shiyas');
  table.set('hr', 'liyan');
  print(table.get('ceo'));
  table.display();
  print(table.get("ceo"));
}

class HashTable {
  List<List<dynamic>> table = [];
  int size;

  HashTable(this.size) {
    table = List.generate(size, (index) => []);
  }

  int hash(String key) {
    int total = 0;
    for (int i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % size;
  }

  void set(String key, dynamic value) {
    int index = hash(key);
    List<dynamic> bucket = table[index];
    if (bucket == null) {
      table[index] = [
        [
          key,
          value,
        ]
      ];
    } else {
      var sameKeyItem = bucket.firstWhere((item) => item[0] == key, orElse: () => null);
      if (sameKeyItem != null) {
        sameKeyItem[1] = value;
      } else {
        bucket.add([
          key,
          value
        ]);
      }
    }
  }

  dynamic get(String key) {
    int index = hash(key);
    List<dynamic> bucket = table[index];
    if (bucket != null) {
      var sameKeyItem = bucket.firstWhere((item) => item[0] == key, orElse: () => null);
      if (sameKeyItem != null) {
        return sameKeyItem[1];
      }
    }
    return null;
  }

  void remove(String key) {
    int index = hash(key);
    List<dynamic> bucket = table[index];
    if (bucket != null) {
      var sameKeyItem = bucket.firstWhere((item) => item[0] == key, orElse: () => null);
      if (sameKeyItem != null) {
        bucket.remove(sameKeyItem);
      }
    }
  }

  void display() {
    for (int i = 0; i < table.length; i++) {
      if (table[i] != null) {
        print("$i ${table[i]}");
      }
    }
  }
}
