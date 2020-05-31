import 'package:flutter/material.dart';
import 'package:octopus_app/pages/login.dart';
import 'package:octopus_app/pages/home.dart';
import 'package:octopus_app/pages/readings.dart';
import 'package:octopus_app/pages/bills.dart';
import 'package:octopus_app/pages/account.dart';
import 'package:octopus_app/pages/navigation.dart';
import 'package:octopus_app/pages/past_readings.dart';
import 'package:octopus_app/pages/payment.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login': (context) => Login(),
    '/home': (context) => Home(),
    '/readings': (context) => Readings(),
    '/bills': (context) => Bills(),
    '/account': (context) => Account(),
    '/navigation': (context) => Navigation(),
    '/past_readings': (context) => PastReadings(),
    '/payment': (context) => Payment(),
  },
  )
);