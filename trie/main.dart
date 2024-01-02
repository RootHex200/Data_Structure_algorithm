class TrieNode {
  Map<String, TrieNode>? children;
  bool? isEndOfWord;

  TrieNode() {
    children = {};
    isEndOfWord = false;
  }
  @override
  String toString() {
    return "{children: $children,isendofword: $isEndOfWord}";
  }
}

class SuffixTrie {
  TrieNode? root;

   SuffixTrie() {
    root = TrieNode();
  }

  void insert(String word) {
    insertHelper(word, root!);
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
    // print(root.toString());
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

  List<String> searchSuggestions(String prefix) {
    TrieNode? prefixNode = findPrefixNode(prefix, root);
    print(prefixNode.toString());
    List<String> suggestions = [];
    if (prefixNode != null) {
      collectSuggestions(prefix, prefixNode, suggestions);
    }
    return suggestions;
  }

  TrieNode? findPrefixNode(String prefix, TrieNode? node) {
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (node!.children!.containsKey(char)) {
        node = node.children![char] as TrieNode;
      } else {
        return null;
      }
    }
    return node;
  }

  void collectSuggestions(
      String currentPrefix, TrieNode? node, List<String> suggestions) {
    if (node!.isEndOfWord!) {
      suggestions.add(currentPrefix);
    }

    for (String char in node.children!.keys) {
      collectSuggestions(
          currentPrefix + char, node.children![char] as TrieNode, suggestions);
    }
  }
}

void main() {
  var trie = SuffixTrie();

  // Inserting words into the trie
  trie.insert("apple");
  trie.insert("banana");
  trie.insert("car");
  trie.insert("carrot");
  print(trie.searchSuggestions("ca"));
  print(trie.searchSuggestions("ban"));

}
