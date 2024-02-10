import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';
import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/favorite/cubit/favorite_cubit.dart';
import 'package:e_ecommerce/favorite/widget/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class product_favorite extends StatelessWidget {
  const product_favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CartCubitCubit>(context);

    return BlocConsumer<CartCubitCubit, CartCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          height: 400,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cubit.get_favorite.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 206, 206),
                      borderRadius: BorderRadius.circular(12)),
                  width: double.infinity,
                  height: 140,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Image(
                          image: NetworkImage(cubit.get_favorite[index].image!),
                          height: double.infinity,
                          width: 140,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('dadxhgfta'),
                            Text('dfjfchfc'),
                            Text(cubit.get_favorite[index].price.toString())
                          ],
                        ),
                      ),
                      Rating(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              cubit.post_Favorites(
                                  id: cubit.get_favorite[index].id.toString());
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
