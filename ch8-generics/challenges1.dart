/// 1- stack of numbers: a stack is a first in last out (LIFO) data structure
/// creat a class named InStack with the following methods.
/// push, pop, peek, isEmpty, toString
/// use List as the internal data structure

void main() {
  final intStack = InStack();
  

  print("Is intStack empty? ${intStack.isEmpty()}");

  intStack.push(1);
  intStack.push(2);
  intStack.push(3);

  print("intStack after pushing elements: $intStack");
  print("Peek from intStack: ${intStack.peek()}");

  intStack.pop();
  print("intStack after popping: $intStack");

  print("Is intStack empty? ${intStack.isEmpty()}");
}


class InStack {
  List<int> stackList= [];

  void push(int value) {
    stackList.add(value);
  }

  int pop() {
    if (isEmpty()) {
      throw StateError('Cannot pop from an empty stack');
    }
    return stackList.removeLast();
  }

  int peek() {
    if (isEmpty()) {
      throw StateError('Cannot pop from an empty stack');
    } else {
      return stackList.last;
    }
  }

  @override
  String toString() {
    return stackList.toString();
  }

  bool isEmpty() {
    return stackList.isEmpty;
  }
}


