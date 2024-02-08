import 'package:e_ecommerce/core/cache/const.dart';
import 'package:e_ecommerce/favorite/widget/Like.dart';
import 'package:e_ecommerce/favorite/widget/rating.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/models/model_home_product.dart';
import 'package:e_ecommerce/home_page/widget/drob_down_menu.dart';
import 'package:e_ecommerce/home_page/widget/image_product.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Product2 extends StatelessWidget {
  Product2({super.key, required this.product});
  final PageController controller = PageController();

  final get_product_home product;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                ))
          ],
          title: Center(child: Text('Product')),
        ),
        body: ListView(
          children: [
            image_product(product: product),
            const Row(
              children: [
                Drob_dawm_menu(label: 'size', dropdownMenuEntries: [
                  DropdownMenuEntry(value: Colors.red, label: 'XL'),
                  DropdownMenuEntry(value: Colors.red, label: 'XL')
                ]),
                Drob_dawm_menu(label: 'Color', dropdownMenuEntries: [
                  DropdownMenuEntry(value: Colors.red, label: 'red'),
                  DropdownMenuEntry(value: Colors.red, label: 'orange')
                ]),
                SizedBox(
                  width: 21,
                ),
                like()
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        product.id.toString(),
                        style: TextStyle(fontSize: 22),
                      ),
                      const Rating()
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    product.oldPrice.toString(),
                    style: TextStyle(fontSize: 22, color: Colors.red),
                  ),
                ],
              ),
            ),
            Text(
              product.name!,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.fade,
            ),
            const SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.description!,
                style: TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomFormButton(
                innerText: 'ADD To CART',
              ),
            ),
          ],
        ));
  }
}
