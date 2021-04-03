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
      body: Container(
        color: Colors.grey[400],
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0
        ),
        child: Text('some text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => print('clicked'),
      ),
    );
  }
}