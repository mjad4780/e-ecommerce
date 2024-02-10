import 'package:e_ecommerce/categories/cubit/product_categories_cubit.dart';
import 'package:e_ecommerce/home_page/Screen/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ProductCategoriesCubit>(context);

    return BlocConsumer<ProductCategoriesCubit, ProductCategoriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state is Searchloading
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: cubit.search1.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Product2(
                                product: cubit.search1[index],
                              )));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Text(cubit.search1[index].id.toString()),
                          Image.network(
                            cubit.search1[index].image!,
                          )
                        ],
                      ),
                    ),
                  );
                });
      },
    );
  }
}
