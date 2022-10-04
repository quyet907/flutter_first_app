import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/product.dart';
import 'package:money_formatter/money_formatter.dart';

class ProductDetailScreen extends StatelessWidget {
  Product product;
  ProductDetailScreen(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.images[0],
              height: 300,
              fit: BoxFit.fitWidth,
            ),
            Text(
              product.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                MoneyFormatter(
                  amount: product.price,
                  settings: MoneyFormatterSettings(
                      symbolAndNumberSeparator: '', fractionDigits: 0),
                ).output.symbolOnLeft,
                style: TextStyle(
                  color: Colors.red[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
