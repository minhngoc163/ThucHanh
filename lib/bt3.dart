import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyHome()),
  );
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Colors.purple;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Homework'),
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: _changeBackgroundColor,
          child: const Text('Click me to change background color'),
        ),
      ),
    );
  }
}
