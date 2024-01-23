void main() {
  /// 1- given the map below:
final animals = {
  'sheep': 99,
  'goat': 32,
  'snakes': 7,
  'lions': 80,
  'seals': 18,
};
/// using a higher order functions to find the total number of animals whose names begin with "S",
///  how many sheeps, snakes, seals are there
final beginsWith = animals.keys.where((key) => key.startsWith('s')).fold(0, (int sum, key) => sum + (animals[key] ?? 0));
print(beginsWith);


/// 2- write a function named repeat task with the following definition
///int repeatTask(int times, int input, Function task);
/// it repeat a given task on input for a given number of times
/// pass an anonymous function to repeatTask to square the input of 2 four times
/// ensure that the output is 65536  
int repeatTask(int times, int input, Function task) {
  int result = task(input);
  for (var i = 1; i < times; i++) {
    result = task(result);
  } 
  return result;
}
final result = repeatTask(4, 2, (num input) {
  return input * input;
});
print(result);
}