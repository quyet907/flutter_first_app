import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/post_controller.dart';
import 'package:flutter_application_2/controllers/product_controller.dart';
import 'package:flutter_application_2/models/base/paging.dart';
import 'package:flutter_application_2/models/product.dart';
import 'package:flutter_application_2/screens/product_detail.dart';
import 'package:money_formatter/money_formatter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Paging<Product> _paging = Paging<Product>();

  @override
  void initState() {
    var postController = ProductController();

    Future<void> getList() async {
      var pagingProduct = await postController.list();

      setState(() {
        _paging = pagingProduct;
      });

      print(pagingProduct.toJson((product) => product.toJson()));
    }

    getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        childAspectRatio: (1 / 1.4),
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(
          _paging.rows.length,
          (index) => ProductItem(product: _paging.rows[index]),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => ProductDetailScreen(product),
        ))
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                product.images[0],
                width: 200,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            )
          ],
        ),
      ),
    );
  }
}
