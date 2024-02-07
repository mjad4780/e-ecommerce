import 'package:e_ecommerce/home_page/widget/favorite.dart';
import 'package:e_ecommerce/home_page/widget/product_cart.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:e_ecommerce/widget/test.dart';
import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Search(),
        const SizedBox(
          height: 11,
        ),
        input_text(
          text: 'My Bag',
          fontSize: 45,
        ),
        const SizedBox(
          height: 11,
        ),
        const product_cart(),
        CustomInputField(
          hintText: 'EnterYour Prome code',
          suffixIcon2: IconButton(onPressed: () {}, icon: Icon(Icons.send)),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total amount:', style: TextStyle(fontSize: 22)),
              Text(plus().toString(), style: TextStyle(fontSize: 22))
            ],
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomFormButton(
            innerText: ' CHECK OUT',
          ),
        )
      ],
    ));
  }
}



//final hello =


