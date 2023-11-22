
 
//  HashTable Using LinearProbing


void main() {
  HashTable table = HashTable(5);

  table.set('1', 'favad');     // Collision handling using linear probing
  table.set('2', 'fahad');
  table.set('name', 'hello');  // Collision handling using linear probing
  table.set('mane', 'how are you'); // Collision handling using linear probing

  // table.delete('name');

  // print(table.get('2'));

  table.display();
}

class HashTable {
  List<List> table = [];

  HashTable(int size) {
    table = List<List>.filled(size, []);
  }

  int hash(String key) {
    int hash = 0;

    for (var i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i)) % table.length; // Hash function with modulo for index calculation
    }

    return hash;
  }

  void set(String key, dynamic value) {
    int index = hash(key);

    // Linear probing to find the next available slot
    while (table[index].isNotEmpty) {
      index = (index + 1) % table.length;
    }

    table[index] = [key, value];
  }

  dynamic get(String key) {
    int index = hash(key);

    // Linear probing to find the key or an empty slot
    while (table[index].isNotEmpty) {
      if (table[index][0] == key) {
        return table[index][1];
      }
      index = (index + 1) % table.length;
    }

    return null; // Key not found
  }

  void delete(String key) {
    int index = hash(key);

    // Linear probing to find the key or an empty slot
    while (table[index].isNotEmpty) {
      if (table[index][0] == key) {
        table[index] = [];
        return;
      }
      index = (index + 1) % table.length;
    }
  }

  void display() {
    for (var i = 0; i < table.length; i++) {
      print(table[i]);
    }
  }
}
