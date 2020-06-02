import 'package:flutter/material.dart';
import 'package:octopus_app/pages/login.dart';
import 'package:octopus_app/pages/home.dart';
import 'package:octopus_app/pages/readings.dart';
import 'package:octopus_app/pages/bills.dart';
import 'package:octopus_app/pages/account.dart';
import 'package:octopus_app/pages/navigation.dart';
import 'package:octopus_app/pages/readings/past_readings.dart';
import 'package:octopus_app/pages/readings/confirm_readings.dart';
import 'package:octopus_app/pages/bills/payment.dart';
import 'package:octopus_app/pages/bills/past_payments.dart';
import 'package:octopus_app/pages/bills/edit_amount.dart';
import 'package:octopus_app/pages/bills/edit_date.dart';
import 'package:octopus_app/pages/bills/edit_type.dart';
import 'package:octopus_app/pages/account/edit_name.dart';
import 'package:octopus_app/pages/account/edit_contact.dart';
import 'package:octopus_app/pages/account/help_support.dart';
import 'package:octopus_app/pages/account/faq.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login': (context) => Login(),
    '/navigation': (context) => Navigation(),

    '/home': (context) => Home(),

    '/readings': (context) => Readings(),
    '/past_readings': (context) => PastReadings(),
    '/confirm_readings': (context) => ConfirmReadings(),

    '/bills': (context) => Bills(),
    '/edit_amount': (context) => EditAmount(),
    '/edit_date': (context) => EditDate(),
    '/edit_type': (context) => EditType(),
    '/payment': (context) => Payment(),
    '/past_payments': (context) => PastPayments(),

    '/account': (context) => Account(),
    '/edit_name': (context) => EditName(),
    '/edit_contact': (context) => EditContact(),
    '/help_support': (context) => HelpSupport(),
    '/faq': (context) => FAQ(),
  },
  )
);