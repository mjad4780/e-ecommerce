import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/favorite/widget/favorite.dart';
import 'package:e_ecommerce/home_page/cart/widget/product_cart.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:e_ecommerce/widget/test.dart';
import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);

    return Scaffold(
        body: BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
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
            Expanded(child: product_cart()),
            const SizedBox(
              height: 11,
            ),
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
                  Text('cubit.Price.toString()', style: TextStyle(fontSize: 22))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CustomFormButton(
              innerText: ' CHECK OUT',
            )
          ],
        );
      },
    ));
  }
}



//final hello =


