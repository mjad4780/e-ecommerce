import 'package:e_ecommerce/home_page/widget/Like.dart';
import 'package:e_ecommerce/home_page/widget/drob_down_menu.dart';
import 'package:e_ecommerce/home_page/widget/image_product.dart';
import 'package:e_ecommerce/home_page/widget/rating.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
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
        children: const [
          image_product(),
          Row(
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
          SizedBox(
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
                      'data',
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      'data',
                      style: TextStyle(fontSize: 22),
                    ),
                    Rating()
                  ],
                ),
                Text(
                  'data',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'iufgaiukfgfhfupsaufhlifgweyr8uhdfahgfksaugsdizofhjohghfagjisohfahiufgaiukfgfhfupsaufhlifgweyr8uhdfahgfksaugsdizofhjohghfagjisohfah'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomFormButton(
              innerText: 'ADD To CART',
            ),
          ),
          SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
