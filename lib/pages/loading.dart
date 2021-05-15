import 'package:flutter/material.dart';
import 'package:http/http.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  getData() async {
    var response = await get(url);
    var data = response.body;
    print(data);
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
