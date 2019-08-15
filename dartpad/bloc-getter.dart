import 'dart:async';

void main() {
  final bloc = new Bloc();

  bloc.emailController.stream.listen((value) {
    print(value);
  });

  bloc.emailController.sink.add('NEW EMAIL');
  bloc.changeEmail('MY NEW EMAIL');
}

class Bloc {
  final emailController = StreamController<String>();

  get changeEmail => emailController.sink.add;
}
