import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:providers/ChangeNotifier.dart/timer.dart';
import 'package:providers/Provider2NOTWORKING.dart/timer.dart';
// import 'package:providers/timer.dart';

class Providertimer extends StatefulWidget {
  const Providertimer({Key? key}) : super(key: key);

  @override
  _ProvidertimerState createState() => _ProvidertimerState();
}

class _ProvidertimerState extends State<Providertimer> {
  // int initialValue = 60;
  @override
  void initState() {
    var tI = Provider.of<TimerInfo>(context);
    Timer.periodic(const Duration(seconds: 1), (t) {
      tI.updateRemainingTime();
      // setState(() {
      //   initialValue--;
      // });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print('==============');
    return Scaffold(
      body: Center(
        child: Consumer<TimerInfo>(
          builder: (context, data, child) {
            return Text(data.getremainingTime().toString(),
                style: const TextStyle(fontSize: 72));
          },
          // child: Text(
          //   initialValue.toString(),
          //   style: const TextStyle(fontSize: 72),
        ),
      ),
    );
  }
}
