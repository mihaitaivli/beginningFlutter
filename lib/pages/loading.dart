import 'package:flutter/material.dart';
import 'package:sl_fe/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime wt = WorldTime(
        friendlyLocation: 'London',
        flag: 'england.png',
        locale: 'Europe/London'
    );
    await wt.getTime();
    setState(() {
      time = wt.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
