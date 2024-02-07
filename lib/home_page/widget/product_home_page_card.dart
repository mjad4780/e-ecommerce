import 'package:e_ecommerce/home_page/Screen/product.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/favorite/widget/Like.dart';
import 'package:flutter/material.dart';

class product_home_page extends StatelessWidget {
  const product_home_page({super.key, required this.cubit});
  final HomePageCubit cubit;
  @override
  Widget build(BuildContext context) {
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
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      blurRadius: 22, //الظل
                      offset: Offset(10, 10))
                ]),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
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
                                  fontSize: 16,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              '${cubit.product_home[index].price.toString()}\$',
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
              const Positioned(right: 6, top: 90, child: like()),
            ]),
          );
        });
  }
}
