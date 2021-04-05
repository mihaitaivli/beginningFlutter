import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, // removes the shadow
      ),
    );
  }
}
