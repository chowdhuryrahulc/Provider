// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You have pressed this button this many times:'),
            Text(
              context.watch<Counter>().count.toString(),
              style: TextStyle(fontSize: 72),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: Key('decrement_floatingActionButton'),
            onPressed: () {
              context.read<Counter>().decrement();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            key: Key('reset_floatingActionButton'),
            onPressed: () {
              context.read<Counter>().reset();
            },
            child: Icon(
              Icons.exposure_zero,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            key: Key('increment_floatingActionButton'),
            onPressed: () {
              context.read<Counter>().increment();
            },
            child: Icon(Icons.add),
          ),
          // SizedBox(width: 10,),
        ],
      ),
    );
  }
}
