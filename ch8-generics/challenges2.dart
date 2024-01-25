/// 1- stack of numbers: a stack is a first in last out (LIFO) data structure
/// creat a class named InStack with the following methods.
/// push, pop, peek, isEmpty, toString
/// use List as the internal data structure
/// use Generics for what you made in challenge 1

void main() {
  final intStack = InStack<int>();
  final stringStack = InStack<String>();

  print("Is intStack empty? ${intStack.isEmpty()}");
  print("Is stringStack empty? ${stringStack.isEmpty()}");

  intStack.push(1);
  intStack.push(2);
  intStack.push(3);

  stringStack.push("One");
  stringStack.push("Two");
  stringStack.push("Three");

  print("intStack after pushing elements: $intStack");
  print("Peek from intStack: ${intStack.peek()}");

  print("stringStack after pushing elements: $stringStack");
  print("Peek from stringStack: ${stringStack.peek()}");

  intStack.pop();
  print("intStack after popping: $intStack");

  stringStack.pop();
  print("stringStack after popping: $stringStack");

  print("Is intStack empty? ${intStack.isEmpty()}");
  print("Is stringStack empty? ${stringStack.isEmpty()}");
}


class InStack<E> {
  List<E> stackList= [];

  InStack() : stackList = [];
  

  void push(E value) {
    stackList.add(value);
  }

  E pop() {
    if (isEmpty()) {
      throw StateError('Cannot pop from an empty stack');
    }
    return stackList.removeLast();
  }

  E peek() {
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


