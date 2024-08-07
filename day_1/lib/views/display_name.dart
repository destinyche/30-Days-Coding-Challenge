import 'package:flutter/material.dart';

class DisplayName extends StatefulWidget {
  const DisplayName({super.key});

  @override
  State<DisplayName> createState() => _DisplayNameState();
}

String myName = "";
String outPut = "";
Container nameContainer = Container();

class _DisplayNameState extends State<DisplayName> {
  final _outPut = TextEditingController();
  void onClick() {
    setState(() {
      myName = "CHE DESTINY";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Task 1",
            style: TextStyle(
                fontSize: 30, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  onClick();
                },
                child: const Text(
                  "MY NAME IS:",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(myName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
          const Text(
            "Task 2",
            style: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  border: const OutlineInputBorder(),
                  hintText: ' Type In Something',
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
              onPressed: () {
                setState(() {
                  outPut = _outPut.text;
                });
              },
              child: const Text(" Click")),
          const SizedBox(
            height: 24,
          ),
          Text(outPut,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
              
        ],
      ),
    );
  }
}
