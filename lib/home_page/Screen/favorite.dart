import 'package:e_ecommerce/home_page/widget/favorite.dart';
import 'package:e_ecommerce/home_page/widget/product_favorite.dart';
import 'package:flutter/material.dart';

class favorite extends StatelessWidget {
  const favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: const [
      app_Apr_favorite(),
      product_favorite(),
    ]));
  }
}
