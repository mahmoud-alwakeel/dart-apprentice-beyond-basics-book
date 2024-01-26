/// overloading an operator in an Enum
enum Day {
  monady,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  Day operator +(int days) {
    final numberOfItems = Day.values.length;

    final index = (this.index + days) % numberOfItems;

    return Day.values[index];
  }

  //Day get next => this + 1;

}

void main() {
  var day = Day.monady;

  day = day + 2;
  print(day.name);

  day += 3;
  print(day.name);

  day++;
  print(day.name);

  //final restDay = Day.saturday;
  //print(restDay.next.name);
}