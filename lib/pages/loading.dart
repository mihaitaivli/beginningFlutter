import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  getData() async {
    Response response = await get(url);
    Map objMap = jsonDecode(response.body);
    print(objMap['id']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
