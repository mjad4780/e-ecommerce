import 'package:e_ecommerce/categories/cubit/product_categories_cubit.dart';
import 'package:e_ecommerce/home_page/Screen/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ProductCategoriesCubit>(context);

    return Scaffold(
      body: BlocConsumer<ProductCategoriesCubit, ProductCategoriesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state is Searchloading || cubit.search1.isNotEmpty
              ? ListView.builder(
                  itemCount: cubit.search1.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Product2(
                                    product: cubit.search1[index],
                                  )));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.network(
                                    cubit.search1[index].image!,
                                    fit: BoxFit.fill,
                                    height: 100,
                                    width: 150,
                                  ),
                                  Container(
                                    width: 180,
                                    child: Text(
                                      cubit.search1[index].name.toString(),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  })
              : Center(
                  child: Text(
                  'please is',
                  style: TextStyle(fontSize: 44),
                ));
        },
      ),
    );
  }
}
