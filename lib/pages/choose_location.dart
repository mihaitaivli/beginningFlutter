import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
   getData() async {
    // simulate network request
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'Mihaita';
    });

    String bio = await Future.delayed(Duration(seconds: 1), () {
      return 'programmer, father, husband';
    });

    print('$name : $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('don\'tt wait for getData() to finish');
  }

  @override
  Widget build(BuildContext context) {

    print('build ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter: $counter'),
      ),
    );
  }
}
