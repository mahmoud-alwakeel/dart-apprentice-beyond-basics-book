void main() {
  final tree = createTree([7, 1, 9, 0, 5, 8]);

  print(tree?.value);
  print(tree?.leftChild?.value);
  print(tree?.rightChild?.value);
  print(tree?.leftChild?.leftChild?.value);
  print(tree?.leftChild?.rightChild?.value);
  print(tree?.rightChild?.leftChild?.value);
  print(tree?.rightChild?.rightChild?.value);
}

Node<E>? createTree<E>(List<E> nodes, [int index = 0]) {
  if (index >= nodes.length) return null;

  final node = Node(nodes[index]);

  final leftChildIndex = 2 * index + 1;
  final rightChildIndex = 2 * index + 2;

  node.leftChild = createTree(nodes, leftChildIndex);
  node.rightChild = createTree(nodes, rightChildIndex);

  return node;
}


class Node<T> {
  Node(this.value);

  T value;

  Node<T>? leftChild;
  Node<T>? rightChild;
}
