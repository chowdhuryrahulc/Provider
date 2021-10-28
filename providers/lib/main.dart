//! 1) wrap the topmost widgit with ChangeNotifierProvider and pass the Class
//! 2) Extend the Class with ChangeNotifier
//! 3) Send Data:  context.read<Class Name>().data
//!                OR Provider.of<Class Name>(context, listen: false).function();
//? only difference is listen = false for read
//! 4) Recieve Data: context.watch<Class Name>().data;
//!                 OR Provider.of<Class Name>(context).variable;
//! 5) Use NotifyListeners() to modify data

// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:providers/Provider5/Counter1.dart';
import 'package:providers/Provider5/mainCounter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Provider4Dark/providerdark.dart';
import 'package:providers/provider3/MyHomePage.dart';
import 'package:providers/provider3/counter_provider.dart';
import 'package:providers/Provider1/providerXYZ.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter()),
    ChangeNotifierProvider(create: (_) => TaskData()),
    ChangeNotifierProvider(create: (_) => darktheme()),
    ChangeNotifierProvider(create: (_) => Counter1()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: context.watch<darktheme>().dark
            ? ThemeData.dark()
            : ThemeData.light(),
        home: PAGE());
  }
}
