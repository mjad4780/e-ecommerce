import 'package:e_ecommerce/Onboirding_splash/inboiding.dart';
import 'package:e_ecommerce/categories/cubit/product_categories_cubit.dart';
import 'package:e_ecommerce/home_page/Screen/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class productCategories extends StatelessWidget {
  productCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ProductCategoriesCubit>(context);

    return Scaffold(
        body: BlocConsumer<ProductCategoriesCubit, ProductCategoriesState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state is ProductCategoriesloading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: cubit.get_product_categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Product2(
                                        product:
                                            cubit.get_product_categories[index],
                                      )));
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.network(
                                        cubit.get_product_categories[index]
                                            .image!,
                                        fit: BoxFit.fill,
                                        height: 100,
                                        width: 150,
                                      ),
                                      Container(
                                        width: 180,
                                        child: Text(
                                          cubit.get_product_categories[index]
                                              .name
                                              .toString(),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                      },
                    );
            }));
  }
}



    // BlocConsumer<ProductCategoriesCubit, ProductCategoriesState>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    //     return
    //  state is ProductCategoriesloading
    //     ? Center(child: CircularProgressIndicator())
    //     : ListView.builder(
    //         itemCount: cubit.get_product_categories.length,
    //         itemBuilder: (BuildContext context, int index) {
    //           return GestureDetector(
    //             onTap: () {
    //               Navigator.of(context).push(MaterialPageRoute(
    //                   builder: (context) => Product2(
    //                         product: cubit.get_product_categories[index],
    //                       )));
    //             },
    //             child:

    //               );
    //             },
    //           );
    //   },
    // );

