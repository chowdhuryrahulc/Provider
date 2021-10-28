// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Provider5/Counter1.dart';

class PAGE extends StatelessWidget {
  const PAGE({Key? key}) : super(key: key);
  // void _incrementCounter(BuildContext context) {
  //   Provider.of<Counter1>(context, listen: false).incrementCounter();
  // }

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter1>(context).count;
    return Scaffold(
      appBar: AppBar(
        title: Text('Amazing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter1>(context, listen: false).incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider.value(
//           value: Counter(),
//         ),
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         home: MyHomePage(title: "AndroidVille Provider Pattern"),
//       ),
//     );
//   }
// }
// class Page extends StatelessWidget {
//   const Page({Key? key}) : super(key: key);

//   // final String title;
//   // MyHomePage({this.title});

//   void _incrementCounter(BuildContext context) {
//     Provider.of<Counter1>(context, listen: false).incrementCounter();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var counter = Provider.of<Counter1>(context).getCounter;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Amazing'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _incrementCounter(context),
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }