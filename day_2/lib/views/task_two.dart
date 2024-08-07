import 'package:flutter/material.dart';

class TaskTwo extends StatefulWidget {
  const TaskTwo({super.key});

  @override
  State<TaskTwo> createState() => _TaskTwoState();
}

String outPut = "";
Container nameContainer = Container();

class _TaskTwoState extends State<TaskTwo> {
  final _outPut = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TASK TWO",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.yellow.shade200,
                  border: const OutlineInputBorder(),
                  hintText: ' Type In Your Name',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _outPut.clear();
                      },
                      icon: const Icon(Icons.clear))),
              controller: _outPut,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              ),
              onPressed: () {
                final snackBar = SnackBar(
                  backgroundColor: Colors.yellow.shade200,
                  content: Center(
                    child: Text(
                      outPut = _outPut.text,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text(
                "Display Name",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
