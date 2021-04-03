import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome App'),
        centerTitle: true,
      ),
      body: Padding(
        child: Text('hello world'),
        padding: EdgeInsets.all(30.0),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => print('clicked'),
      ),
    );
  }
}