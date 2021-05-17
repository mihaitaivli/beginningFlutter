import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String friendlyLocation; // friendly location name
  String time; // time in the location
  String flag; // url to an asset flag icon
  String locale; // i.e. Europe/London
  String host = 'https://worldtimeapi.org/api/timezone/';

  WorldTime({ this.friendlyLocation, this.flag, this.locale });
    Future<void> getTime() async {
      try {
        Response response = await get(Uri.parse('$host$locale'));
        Map data = jsonDecode(response.body);

        String datetime_string = data['datetime'];
        DateTime now = DateTime.parse(datetime_string);

        String offset_string = data['utc_offset'];
        int hours = int.tryParse(offset_string.substring(0,3));

        DateTime localTime = now.add(Duration(hours: hours));
        time = DateFormat.jm().format(localTime);
      }
      catch (e) {
        print('There was an error while fetching time $e');
        time = 'There was an error while getting data';
      }
  }
}