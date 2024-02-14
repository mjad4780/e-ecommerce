import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';
import 'package:e_ecommerce/cart/widget/shop_cart.dart';
import 'package:e_ecommerce/favorite/widget/Like.dart';
import 'package:e_ecommerce/home_page/Screen/product.dart';

import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/widget/Card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class product_home_page extends StatelessWidget {
  const product_home_page({
    super.key,
    required this.cubit,
  });
  final HomePageCubit cubit;

  @override
  Widget build(BuildContext context) {
    final cubit1 = BlocProvider.of<CartCubitCubit>(context);
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (BuildContext context, HomePageState state) {},
      builder: (context, state) {
        return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: cubit.product_home.length,
            padding: const EdgeInsets.only(top: 22, left: 18, right: 18),
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.9, //haih=ght
                crossAxisSpacing: 10,
                mainAxisSpacing: 40,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Product2(
                              product: cubit.product_home[index],
                            )));
                  },
                  child: Stack(clipBehavior: Clip.none, children: [
                    Card1(
                      index: index,
                      cubit: cubit,
                    ),
                    Positioned(
                      right: 10,
                      top: -11,
                      child: Image.network(
                        '${cubit.product_home[index].image}',
                        width: 150,
                        height: 100,
                      ),
                    ),
                    state is postFavoritloading
                        ? CircularProgressIndicator()
                        : Like(
                            cubit1: cubit1,
                            index: index,
                            cubit: cubit,
                          ),
                    state is postCartCubitloading
                        ? CircularProgressIndicator()
                        : shop_cart(
                            index: index,
                            cubit1: cubit1,
                            cubit: cubit,
                          ),
                  ]));
            });
      },
    );
  }

  // Card1 Card(int index) {
  //   return
  // }

  // Positioned cart(CartCubitCubit cubit1, int index) {
  //   return
  // }
}
//   Positioned Like(CartCubitCubit cubit1, int index) {
//     return
//   }
// }
