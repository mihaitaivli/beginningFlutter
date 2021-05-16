import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  static getTime() async {
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London'));
    Map data = jsonDecode(response.body);

    String datetime_string = data['datetime'];
    DateTime now = DateTime.parse(datetime_string);

    String offset_string = data['utc_offset'];
    int hours = int.tryParse(offset_string.substring(0,3));

    DateTime localTime = now.add(Duration(hours: hours));
    print(localTime);
  }
}