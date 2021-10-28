import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dark extends StatelessWidget {
  const Dark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terminator'),
      ),
      drawer: Drawer(
          child: Switch(
              value: context.watch<darktheme>()._dark,
              onChanged: (changed) {
                context.read<darktheme>().change(changed);
              })),
    );
  }
}

class darktheme extends ChangeNotifier {
  bool _dark = false;
  bool get dark => _dark;
  void change(value) {
    _dark = value;
    notifyListeners();
  }
}
