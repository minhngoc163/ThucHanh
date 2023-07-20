// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Trang Chủ')),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Võ Minh Ngọc, 08_ĐH_THMT",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              ColorfulBoxes(),
              const SizedBox(height: 20),
              Image.asset(
                'assets/flutter.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorfulBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorBox(color: Colors.blue),
        ColorBox(color: Colors.green),
        ColorBox(color: Colors.orange),
      ],
    );
  }
}

class ColorBox extends StatelessWidget {
  final Color color;

  ColorBox({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
