import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('hello');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
