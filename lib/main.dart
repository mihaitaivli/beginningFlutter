import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, // removes the shadow
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NAME',
              style: TextStyle(
                // fontSize: 30.0,
                color: Colors.grey,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Alexandra Ivli',
              style: TextStyle(
                // fontSize: 30.0,
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
