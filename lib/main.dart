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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('simple text'),
          ElevatedButton(
            onPressed: () {},
            child: Text('elevated button'),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            color: Colors.amber,
            child: Image.asset(
              'assets/stars.jpg',
              width: 150.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => print('clicked'),
      ),
    );
  }
}