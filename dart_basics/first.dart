double addNums(double num1, double num2) {
  return num1 + num2;
}

class Person {
  String? name;
  int? age;

  Person({inputName, age = 7}) {
    // Person({this.name,this.age})
    //for named arguments , = for default values
    name = inputName;
    this.age = age;
  }
}

void main() {
  print('hello');
  print(addNums(1, 2));
  var p1 = Person(inputName: 'as');
  print(p1);
  print(p1.age);
}

//every thing in dart is an object
