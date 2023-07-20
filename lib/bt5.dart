import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeNumberApp(),
    );
  }
}

class PrimeNumberApp extends StatefulWidget {
  @override
  _PrimeNumberAppState createState() => _PrimeNumberAppState();
}

class _PrimeNumberAppState extends State<PrimeNumberApp> {
  TextEditingController _numberController = TextEditingController();
  String _resultText = '';

  bool _isPrime(int number) {
    if (number <= 1) return false;
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  void _checkPrime() {
    int number = int.tryParse(_numberController.text) ?? 0;
    String result =
        _isPrime(number) ? 'Là số nguyên tố' : 'Không là số nguyên tố';
    setState(() {
      _resultText = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiểm tra số nguyên tố'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TextField để nhập số
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Nhập số',
                ),
              ),
            ),
            // Button để kiểm tra số nguyên tố
            ElevatedButton(
              onPressed: _checkPrime,
              child: Text('Kiểm tra'),
            ),
            // Kết quả kiểm tra số nguyên tố
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                _resultText,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
