/// 1- fizzy bottles
/// create an interface named Bottle and add method to it called Open
/// creat a concrete class named SodaBottle that implements Bottle and print "fizz fizz" when open is called
/// add factory contructor to bottle that returns SodaBottle instance
/// instaniate SodaBottle by using the Bottle factory constructor and call open on the object

void main() {
  // challenge 1
  final bottle = Bottle();
  bottle.open();

  // challeneg 2
  final dataRepository = DataRepository();
  final id = dataRepository.fetchIdFromDatabase("alwakeel");
  print(id);
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print("fizz fizz");
  }
}

/// 2- design an interface that will sit between the business logic of your
/// note-taking app and a SQl database, after that implement fake database class that will return mock data

abstract class DataRepository {
  factory DataRepository () => FakeId();
  int fetchIdFromDatabase(String userName);
}

class FakeId implements DataRepository {
  @override
  int fetchIdFromDatabase(String userName) {
    return 1;
  }
}

