import 'package:e_ecommerce/favorite/widget/favorite.dart';
import 'package:e_ecommerce/favorite/widget/product_favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class favorite extends StatelessWidget {
  const favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      app_Apr_favorite(),
      Expanded(child: product_favorite()),
    ]));
  }
}
