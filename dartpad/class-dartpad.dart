// "void" means that we are not returning anything from this function
void main() {
  var person = new Person('Andrei');
  
  person.printName();
}

class Person {
  String firstName;
  
  // Dart assigns first argument to firstName on class
  Person(this.firstName);
  
  printName() {
    // optional to use this.firstName in Dart
    print(firstName);
  }
}