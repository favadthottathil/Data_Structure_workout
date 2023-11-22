void main() {
  TrieNode trieNode = TrieNode();

  Trie trie = Trie();

  trie.insert(trieNode, 'fava');

  trie.insert(trieNode, 'fahad');

  print(trie.search(trieNode, 'fava'));

  print(trie.search(trieNode, 'fffffff'));
}

class TrieNode {
  Map<String, TrieNode> children = {};

  bool isEnd = false;
}

class Trie {
  insert(TrieNode root, String word) {
    TrieNode node = root;

    for (var i = 0; i < word.length; i++) {
      String value = word[i];

      if (!node.children.containsKey(value)) {
        node.children[value] = TrieNode();
      }
      node = node.children[value]!;
    }
    node.isEnd = true;
  }

  search(TrieNode root, String word) {
    TrieNode node = root;

    for (var i = 0; i < word.length; i++) {
      var value = word[i];

      if (!node.children.containsKey(value)) {
        return false;
      }
      node = node.children[value]!;
    }
    return node.isEnd;
  }
}
