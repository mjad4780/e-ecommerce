import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';

import 'package:flutter/material.dart';

class product_cart extends StatelessWidget {
  const product_cart({super.key, required this.cubit});
  final CartCubitCubit cubit;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cubit.get_cart.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 226, 226),
                  borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              height: 140,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Image(
                      image: NetworkImage(cubit.get_cart[index].image!),
                      height: double.infinity,
                      width: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 135,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cubit.get_cart[index].name!,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          // SizedBox(
                          //   height: 40,
                          // ),
                          // Current()
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          cubit.post_cart(
                              product_id: cubit.get_cart[index].id.toString());
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          cubit.get_cart[index].price.toString()
                          // cubit.basketitem[index].price.toString(),
                          ,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
