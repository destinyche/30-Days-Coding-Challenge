import 'package:day_2/views/task_one.dart';
import 'package:day_2/views/task_two.dart';
import 'package:flutter/material.dart';

class BNavBar extends StatefulWidget {
  const BNavBar({super.key});

  @override
  State<BNavBar> createState() => _BNavBarState();
}

int _currentIndex = 1;

final List<Widget> _screens = [
  const TaskOne(),
  const TaskTwo(),
];

class _BNavBarState extends State<BNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          elevation: 0,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.yellow,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          useLegacyColorScheme: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Task One'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Task Two'),
          ]),
    );
  }
}
