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
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kitten.jpeg'),
                radius: 150.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[800],
            ),
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
            SizedBox(height: 30.0),
            Text(
              'CLEARANCE LEVEL ',
              style: TextStyle(
                // fontSize: 30.0,
                color: Colors.grey,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'All access - Master sneaker',
              style: TextStyle(
                // fontSize: 30.0,
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'alexandra.ivli.1@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.5,

                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
