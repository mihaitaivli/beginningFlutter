import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  Color defaultColor = Colors.blue[400];
  Expanded createExpandedContainer(String content, Color color, int flexValue) => Expanded(
    flex: flexValue,
      child : Container(
        padding: EdgeInsets.all(30.0),
        color: color,
        child: Text(content),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome App'),
        centerTitle: true,
        backgroundColor: defaultColor,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/stars.jpg')
          ),
          createExpandedContainer('1', Colors.cyan, 3),
          createExpandedContainer('2', Colors.red, 2),
          createExpandedContainer('3', Colors.green, 1),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => print('clicked'),
        backgroundColor: defaultColor,
      ),
    );
  }
}