/// create a class named Fruit with a String named color and af method named describeColor, which uses color to print a messege
/// create a subclass named Melon and then create two Melon subclasses named Watermelon and Cantaloupe
/// override describe color in the WaterMelonClass to vary the outPut
void main() {
  final fruit = Fruit("yellow");
  final melon = Melon("blue");
  final watermelon = Watermelon("red");
  final cantaloupe = Cantaloupe("green");
  fruit.describeColor();
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}

class Fruit {
  Fruit(this.color);

  final String color;
  void describeColor() {
    print("the color is $color");
  }
  // @override
  // String toString() => describeColor();
}

class Melon extends Fruit {
  Melon(super.color);
}

class Watermelon extends Melon {
  Watermelon(super.color);
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);

}

