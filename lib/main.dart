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
      body: Row(
        children: <Widget>[
          Text('hi there'),
          TextButton(
            onPressed: (){},
            child: Text('click inside row child'),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(30.0),
            child: Text('some text inside a container'),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => print('clicked'),
      ),
    );
  }
}