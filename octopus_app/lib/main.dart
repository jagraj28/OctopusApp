import 'package:flutter/material.dart';
import 'package:octopus_app/pages/login.dart';
import 'package:octopus_app/pages/home.dart';
import 'package:octopus_app/pages/readings.dart';
import 'package:octopus_app/pages/bills.dart';
import 'package:octopus_app/pages/account.dart';
import 'package:octopus_app/pages/navigation.dart';
import 'package:octopus_app/pages/readings/past_readings.dart';
import 'package:octopus_app/pages/bills/payment.dart';
import 'package:octopus_app/pages/bills/past_payments.dart';
import 'package:octopus_app/pages/account/help_support.dart';
import 'package:octopus_app/pages/account/faq.dart';

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
    '/past_payments': (context) => PastPayments(),
    '/help_support': (context) => HelpSupport(),
    '/faq': (context) => FAQ(),
  },
  )
);