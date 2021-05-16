import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var url = Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London');
  getTime() async {
    Response response = await get(url);
    Map data = jsonDecode(response.body);

    String datetime_string = data['datetime'];
    DateTime now = DateTime.parse(datetime_string);

    String offset_string = data['utc_offset'];
    int hours = int.tryParse(offset_string.substring(0,3));

    DateTime localTime = now.add(Duration(hours: hours));
    print(localTime);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
