// every Dart program starts by catching and running the main function
// if no main function exists, error "Uncaught" will be shown
void main() {
  var name = myName();
  
  print('My name is $name');
}

// "String" annotates return type
String myName() {
  return 'Andrei';
}
