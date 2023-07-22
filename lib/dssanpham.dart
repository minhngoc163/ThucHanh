import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> products = [
    'Sản phẩm ',
    'Sản phẩm ',
    'Sản phẩm ',
    'Sản phẩm ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách sản phẩm'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            onTap: () {
              // Chuyển sang màn hình chi tiết sản phẩm khi sản phẩm được chọn
              Navigator.pushNamed(context, '/chitietsanpham',
                  arguments: products[index]);
            },
          );
        },
      ),
    );
  }
}
