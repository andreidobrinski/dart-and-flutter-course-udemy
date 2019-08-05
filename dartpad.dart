// every Dart program starts by catching and running the main function
// if no main function exists, error "Uncaught" will be shown
void main() {
  var name = myName();
  
  // $name is good for string interpolation without computing
  // use ${name.length} to compute values
  print('My name is $name');
}

// "String" annotates return type
String myName() {
  return 'Andrei';
}
