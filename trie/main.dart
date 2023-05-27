class TrieNode {
  Map<String, TrieNode>? children;
  bool? isEndOfWord;

  TrieNode() {
    children = {};
    isEndOfWord = false;
  }
}

class SuffixTrie {
  TrieNode? root;

   SuffixTrie() {
    root = TrieNode();
  }

  void insert(String word) {
    for (int i = 0; i < word.length; i++) {
      insertHelper(word.substring(i), root!);
    }
  }

  void insertHelper(String word, TrieNode node) {
    if (word.isEmpty) {
      node.isEndOfWord = true;
      return;
    }

    String firstChar = word[0];
    if (!node.children!.containsKey(firstChar)) {
      node.children![firstChar] = TrieNode();
    }

    insertHelper(word.substring(1), node.children![firstChar] as TrieNode);
  }

  bool? search(String word) {
    return searchHelper(word, root as TrieNode);
  }

  bool? searchHelper(String word, TrieNode node) {
    if (word.isEmpty) {
      return node.isEndOfWord;
    }

    String firstChar = word[0];
    if (!node.children!.containsKey(firstChar)) {
      return false;
    }

    return searchHelper(word.substring(1), node.children![firstChar] as TrieNode);
  }
}

void main() {
  var trie = SuffixTrie();

  // Inserting words into the trie
  trie.insert("apple");
  trie.insert("banana");
  trie.insert("car");
  trie.insert("carrot");
  
  // Searching for words in the trie
  print(trie.search("apple"));    // Output: true
  print(trie.search("banana"));   // Output: true
  print(trie.search("car"));      // Output: true
  print(trie.search("carrot"));   // Output: true
  print(trie.search("cat"));      // Output: false
}
