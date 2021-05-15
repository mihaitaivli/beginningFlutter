import 'package:flutter/material.dart';
import 'package:sl_fe/pages/choose_location.dart';
import 'package:sl_fe/pages/home.dart';
import 'package:sl_fe/pages/loading.dart';

void main() => runApp(
  MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ),
);
