import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key, required this.index, required this.cubit});
  final int index;
  final HomePageCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.2),
              blurRadius: 22, //الظل
              offset: Offset(10, 10))
        ]),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cubit.product_home[index].id.toString()),
                Text(
                  cubit.product_home[index].name!,
                  style: const TextStyle(
                      fontSize: 16, overflow: TextOverflow.ellipsis),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${cubit.product_home[index].oldPrice.toString()}\$',
                      style: const TextStyle(
                          fontSize: 16, decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      '${cubit.product_home[index].price.toString()}\$',
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
