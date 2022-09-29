import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/models/pruduct.dart';
import 'package:flutter_application_2/screens/prduct_detail.dart';
import 'package:money_formatter/money_formatter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String src =
      'https://www.dongphucthienphuoc.vn/wp-content/uploads/2021/02/hoodie-la-gi-2.jpg';

  Product product = Product(
    name: "Áo khoác dây kéo phù hợp nam nữ chất nỉ bông cao cấp",
    description: "",
    price: 4500,
    images: [],
  );

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
          20,
          (index) => GestureDetector(
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
                      src,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Áo khoác dây kéo phù hợp nam nữ chất nỉ bông cao cấp - #$index",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            MoneyFormatter(
                              amount: 4500,
                              settings: MoneyFormatterSettings(
                                  symbolAndNumberSeparator: '',
                                  fractionDigits: 0),
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
          ),
        ),
      ),
    );
  }
}
