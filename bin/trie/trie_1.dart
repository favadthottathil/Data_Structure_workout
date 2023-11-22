void main() {
  Trie trie = Trie();

  trie.insert('favad');
  print(trie.contains('favad'));
}

class TrieNode {
  Map<String, TrieNode>? children;

  bool? isEndOfWord;

  TrieNode() {
    children = {};
    isEndOfWord = false;
  }
}

class Trie {
  TrieNode? root = TrieNode();

  Trie() {
    root = TrieNode();
  }

  insert(String name) {
    TrieNode? node = root;

    for (var i = 0; i < name.length; i++) {
      String char = name[i];
      if (!node!.children!.containsKey(char)) {
        node.children![char] = TrieNode();
      }
      node = node.children![char];
    }
    node!.isEndOfWord = true;
  }

  contains(String name) {
    TrieNode? node = root;

    for (var i = 0; i < name.length; i++) {
      String char = name[i];

      if (!node!.children!.containsKey(char)) {
        return false;
      }

      node = node.children![char];
    }

    return node!.isEndOfWord;
  }
}
