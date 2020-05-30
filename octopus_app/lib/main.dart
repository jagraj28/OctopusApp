import 'package:flutter/material.dart';
import 'package:octopus_app/pages/login.dart';
import 'package:octopus_app/pages/home.dart';
import 'package:octopus_app/pages/readings.dart';
import 'package:octopus_app/pages/bills.dart';
import 'package:octopus_app/pages/account.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login': (context) => Login(),
    '/home': (context) => Home(),
    '/readings': (context) => Readings(),
    '/bills': (context) => Bills(),
    '/account': (context) => Account(),
  },
  )
);