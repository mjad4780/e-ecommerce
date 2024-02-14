import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class shop_cart extends StatelessWidget {
  const shop_cart(
      {super.key,
      required this.index,
      required this.cubit1,
      required this.cubit});
  final CartCubitCubit cubit1;
  final int index;
  final HomePageCubit cubit;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubitCubit, CartCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Positioned(
            right: 80,
            top: 90,
            child: IconButton(
              onPressed: () {
                cubit1.post_cart(
                    product_id: cubit.product_home[index].id.toString());
              },
              icon: Icon(Icons.shopping_cart,
                  color: cubit1.Cart_id.contains(
                          cubit.product_home[index].id.toString())
                      ? Colors.red
                      : Colors.white),
            ));
      },
    );
  }
}
