/// 1- better days ahead
/// in the practicing file we wrote a Day enum with the seven days of the week
/// override the (-) so you can subtract integers from enum values
/// when you print the name of your Day enum, it prints the days of the week all in lower case,
/// it would be nice to use uppercase for the display name, for example
/// Monday instead of monday, add the displayName property to Day enum for that.

enum Days {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  String get capitalize => '${this.name[0].toUpperCase()}${this.name.substring(1)}';


  Days operator -(int days) {
    final numberOfDays = Days.values.length;

    final index = (this.index - days) % numberOfDays;

    final correctedIndex = index < 0 ? numberOfDays + index : index;

    return Days.values[correctedIndex];
  }
}

void main() {

  var day = Days.tuesday;
  day = day - 1;
  print(day.capitalize);
}