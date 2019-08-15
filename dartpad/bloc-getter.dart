import 'dart:async';

void main() {
  final bloc = new Bloc();

  bloc.email.listen((value) {
    print(value);
  });

  bloc.emailController.sink.add('NEW EMAIL');
  bloc.changeEmail('MY NEW EMAIL');
}

class Bloc {
  final emailController = StreamController<String>();

  // Adds data to stream
  Function(String) get changeEmail => emailController.sink.add;

  // Retrieves data from stream
  Stream<String> get email => emailController.stream;
}
