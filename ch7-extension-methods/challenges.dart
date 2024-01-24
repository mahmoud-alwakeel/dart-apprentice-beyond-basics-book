/// Dart has a Duration class for expressing the lengths of time, Make an extension on int, so you can express duration like so:
/// final timeRemaining = 3.minutes

void main() {
  final timeRemaining = 3.minutes;
  print("time remaining $timeRemaining");

// this is the normal way
  final timeRemaining2 = Duration(minutes: 3);
  print("Time Remaining: $timeRemaining2");
}

extension on int {
  Duration get minutes => Duration(minutes: this); 
}