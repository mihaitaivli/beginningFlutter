import 'package:flutter/material.dart';
import 'package:sl_fe/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    WorldTime.getTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
