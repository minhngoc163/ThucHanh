import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController _numAController = TextEditingController();
  TextEditingController _numBController = TextEditingController();
  int _result = 0;

  void _calculateResult(String operator) {
    int numA = int.tryParse(_numAController.text) ?? 0;
    int numB = int.tryParse(_numBController.text) ?? 0;

    setState(() {
      if (operator == '+') {
        _result = numA + numB;
      } else if (operator == '-') {
        _result = numA - numB;
      } else if (operator == '*') {
        _result = numA * numB;
      } else if (operator == '/') {
        if (numB != 0) {
          _result = numA ~/ numB;
        } else {
          _result = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tinh.png',
              height: 200,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _numAController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Nhập số A',
              ),
            ),
            const SizedBox(height: 10, width: 20),
            TextField(
              controller: _numBController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Nhập số B',
              ),
            ),
            const SizedBox(height: 20, width: 10),
            Text(
              'Kết quả $_result',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _calculateResult('+'),
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 14, 121, 209)),
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _calculateResult('-'),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _calculateResult('*'),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text(
                    '*',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _calculateResult('/'),
                  style: ElevatedButton.styleFrom(primary: Colors.yellow),
                  child: const Text(
                    '/',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
