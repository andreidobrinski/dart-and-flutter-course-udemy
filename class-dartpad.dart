// "void" means that we are not returning anything from this function
void main() {
  var person = new Person();
  
  person.firstName = 'Andrei';
  
  person.printName();
}

class Person {
  String firstName;
  
  printName() {
    // optional to use this.firstName in Dart
    print(firstName);
  }
}