import 'package:flutter/material.dart';

class TaskOne extends StatefulWidget {
  const TaskOne({super.key});

  @override
  State<TaskOne> createState() => _TaskOneState();
}

String time = "";


DateTime dateTime = DateTime.now();

class _TaskOneState extends State<TaskOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TASK ONE",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      drawer: Drawer(
        child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                time = DateTime.now().toString();
                
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
                  ),
                ),
      ),
      body: Center(
          child: Text(
        time, 
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      )),
    );
  }
}
