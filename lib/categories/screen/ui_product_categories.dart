import 'package:e_ecommerce/categories/cubit/product_categories_cubit.dart';
import 'package:e_ecommerce/home_page/Screen/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class productCategories extends StatelessWidget {
  const productCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ProductCategoriesCubit>(context);

    return BlocConsumer<ProductCategoriesCubit, ProductCategoriesState>(
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
                                product: cubit.get_product_categories[index],
                              )));
                    },
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        children: [
                          Text(cubit.get_product_categories[index].id
                              .toString()),
                          SizedBox(
                            height: 11,
                          ),
                          Image.network(
                            cubit.get_product_categories[index].image!,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}
