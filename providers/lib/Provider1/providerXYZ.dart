// ignore_for_file: file_names
//! 1) wrap the topmost widgit with ChangeNotifierProvider and pass the Class
//! 2) Extend the Class with ChangeNotifier
//! 3) Consumer:  context.watch<Class Name>().data
//! To Modify Data: context.read<TaskData>().toggle(index, value);
//! 4) Use NotifyListeners() to modify data

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderXYZ extends StatefulWidget {
  const ProviderXYZ({Key? key}) : super(key: key);

  @override
  _ProviderXYZState createState() => _ProviderXYZState();
}

class _ProviderXYZState extends State<ProviderXYZ> {
  // TaskData ob = TaskData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alakasam'),
      ),
      body: ListView.builder(
          itemCount:
              context.watch<TaskData>().listtask.length /*ob.listtask.length*/,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  '${context.watch<TaskData>().listtask[index].title}' /*'${ob.listtask[index].title}'*/),
              trailing: Checkbox(
                  value: context
                      .watch<TaskData>()
                      .listtask[index]
                      .isDone /*ob.listtask[index].isDone*/,
                  onChanged: (value) {
                    context.read<TaskData>().toggle(index, value);
                    /*//! SetState is used to check the Ckeckbox
                    setState(() {
                      ob.listtask[index].isDone = value;
                    });*/
                  }),
            );
          }),
    );
  }
}

class Task {
  String? title;
  bool? isDone;
  Task({this.title, this.isDone});
}

class TaskData extends ChangeNotifier {
  List<Task> listtask = [Task(title: 'Shopping list', isDone: false)];
  toggle(int index, bool? value) {
    listtask[index].isDone = value;
    notifyListeners();
  } //! To use instead of SetState
}
