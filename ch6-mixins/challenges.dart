/// 1- calculator
/// create a class called Calculator with method named sum that prints the sum of two integers you give to it
/// extract the logic in sum to a mixin called Adder
/// use the mixin in Calculator

void main() {
  // challenge 1
  final calculate = Calculator();
  print(calculate.sum(10, 12));


  // challenge 2
  List<Platypus> platypusList = [
    Platypus(12),
    Platypus(5),
    Platypus(8),
    Platypus(14),
  ];

  platypusList.sort();
  for (var platypus in platypusList) {
    print('Platypus Weight: ${platypus.weight}');
  }
}

mixin Adder {
  int sum(int firstNum, int secondNum) {
    return firstNum + secondNum;
  } 
}

class Calculator with Adder{}


/// 2- Dart has a class named comparable which is used by the sort method method of list to sort it's elements
/// add a weight field to the Platypus class you made earlier
/// then make Platypus implement Comparable so that when you have a list of platypus objects
/// calling sort on the list will sort them by weight.

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();
}

class Platypus extends Animal implements Comparable{
  Platypus(this.weight);

  double weight;

  @override
  void eat() {
    print("munch");
  }

  @override
  void move() {
    print("glide");
  }
  
  @override
  int compareTo(other) {
    if (this.weight < other.weight) {
      return -1;
    } else if (this.weight > other.weight) {
      return 1;
    } else {
      return 0;
    }
  }
}
