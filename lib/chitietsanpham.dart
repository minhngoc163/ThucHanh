import 'package:flutter/material.dart';

void main() {
  runApp(ProductDetailScreen());
}

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // lấy tham số
    final String product = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết sản phẩm'),
      ),
      body: Center(
        child: Text('Đây là chi tiết của sản phẩm: $product'),
      ),
    );
  }
}
