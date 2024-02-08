import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';
import 'package:e_ecommerce/cart/widget/product_cart.dart';
import 'package:e_ecommerce/core/cache/const.dart';
import 'package:e_ecommerce/favorite/widget/favorite.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CartCubitCubit>(context);

    return Scaffold(
        body: BlocConsumer<CartCubitCubit, CartCubitState>(
      listener: (context, state) {
        if (state is postCartCubitsuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errornMassege),
            ),
          );
        }
      },
      builder: (context, state) {
        return Center(
          child: state is CartCubitloading
              ? CircularProgressIndicator()
              : Column(
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
                    Expanded(
                        child: product_cart(
                      cubit: cubit,
                    )),
                    const SizedBox(
                      height: 11,
                    ),
                    CustomInputField(
                      hintText: 'EnterYour Prome code',
                      suffixIcon2:
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Total amount:',
                              style: TextStyle(fontSize: 22)),
                          Text(cubit.Total.toString(),
                              style: TextStyle(fontSize: 22))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomFormButton(
                      innerText: ' CHECK OUT',
                      onPressed: () {},
                    )
                  ],
                ),
        );
      },
    ));
  }
}



//final hello =


