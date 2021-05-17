import 'package:flutter/material.dart';
import 'package:sl_fe/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime wt = WorldTime(
        friendlyLocation: 'London',
        flag: 'england.png',
        locale: 'Europe/London'
    );
    await wt.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'friendlyLocation': wt.friendlyLocation,
      'time': wt.time,
      'flag': wt.flag
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
      body: Center(
        child: SpinKitFadingCircle(
          size: 150.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
