import 'package:flutter/material.dart';
import 'package:octopus_app/pages/login.dart';
import 'package:octopus_app/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login': (context) => Login(),
    '/home': (context) => Home(),
  },
  )
);