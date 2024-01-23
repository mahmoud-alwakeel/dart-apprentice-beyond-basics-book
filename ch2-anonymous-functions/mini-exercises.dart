/// final examScores = [89, 37, 28, 65, 99, 50, 21, 70, 85];
/// use sort to order grades from highest to lowest
/// use where to find all the B grades between 80 and 90

void main() {
  final examScores = [89, 37, 28, 65, 99, 50, 21, 70, 85];
  examScores.sort((a, b) => b.compareTo(a));
  print(examScores);

  final BScores = examScores.where((element) => element >= 80 && element <= 90).toList();
  print("B grades: $BScores");

  final surface = Surface();

  surface.onTouch =(x, y) =>  print("$x and $y");

  surface.touch(202.3, 134.0);
}

/// create class named Surface
/// give class property named onTouch a callback function that provides x and y coordinates but returns nothing
/// make a type alias named TouchHandler for the callback function
/// in Surface create a method named touch which takes x and y coordinates and then internally calls onTouch
/// in main create an instance of surface and pass in an anonymous function that prints the x and y coordinates 
/// in main call touch where x is 202.3 and y is 134.0
class Surface {

  TouchHandler?  onTouch;

  void touch(double x, double y) {
    onTouch!(x, y);
  }
}

typedef TouchHandler =  void Function(double x, double y);