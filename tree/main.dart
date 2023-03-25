// /*
//                           20
//                           / \
//                         30    50
//                         / \   / \
//                        60  90 10 9

// */

void main(List<String> args) {
  Node node20 = Node(value: 20);
  Node node30 = Node(value: 30);
  Node node50 = Node(value: 50);
  Node node60 = Node(value: 60);
  Node node90 = Node(value: 90);
  Node node10 = Node(value: 10);
  Node node9 = Node(value: 9);

  node20.left = node30;
  node20.right = node50;

  node30.left = node60;
  node30.right = node90;

  node50.left = node10;
  node50.right = node9;
  print("---------------------------PRE-ORDER--------------------------");
  per_oder(node20);
  print("---------------------------POST-ORDER--------------------------");
  post_order(node20);
  print("---------------------------IN-ORDER--------------------------");
  In_order(node20);
}

class Node {
  var value;
  var left = null;
  var right = null;
  Node({required this.value, this.left, this.right});
  @override
  String toString() => 'Node(value: $value, left: $left, right: $right)';
}

void per_oder(node) {
  print(node.value);

  if (node.left != null) {
    per_oder(node.left);
  }

  if (node.right != null) {
    per_oder(node.right);
  }
}

void post_order(node) {
  if (node.left != null) {
    post_order(node.left);
  }
  if (node.right != null) {
    post_order(node.right);
  }
  print(node.value);
}

void In_order(node) {
  if (node.left != null) {
    In_order(node.left);
  }
  print(node.value);
  if (node.right != null) {
    In_order(node.right);
  }
}
