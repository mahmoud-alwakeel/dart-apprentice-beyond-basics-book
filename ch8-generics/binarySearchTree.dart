void main() {
  // as int doesnt directly implement comparable while num does
  var tree = BinarySearchTree<num>();

  tree.insert(7);
  tree.insert(1);
  tree.insert(9);
  tree.insert(0);
  tree.insert(5);
  tree.insert(8);

  print(tree);
}

class Node<E> {
  Node(this.value);

  E value;

  Node<E>? leftChild;
  Node<E>? rightChild;

  @override
  String toString() {
    final left = leftChild?.toString() ?? '';
    final right = rightChild?.toString() ?? '';
    final parent = value?.toString() ?? '';

    return '$left $parent $right';
  }
}

class BinarySearchTree<E extends Comparable> {
  Node<E>? root;

  void insert(E value) {
    root = _insertAt(root, value);
  }

  Node<E> _insertAt(Node<E>? node, E value) {
    if (node == null) {
      return Node(value);
    }

    if (value.compareTo(node.value) < 0) {
      node.leftChild = _insertAt(node.leftChild, value);
    } else {
      node.rightChild = _insertAt(node.rightChild, value);
    }

    return node;
  }

  @override
  String toString() => root.toString();
}
