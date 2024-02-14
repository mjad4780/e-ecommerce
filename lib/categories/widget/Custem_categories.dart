import 'package:dio/dio.dart';
import 'package:e_ecommerce/categories/cubit/product_categories_cubit.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/core/api/dio_consumer.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Custem_categories extends StatelessWidget {
  const Custem_categories({super.key, required this.cubit});
  final HomePageCubit cubit;
  @override
  Widget build(BuildContext context) {
    final cubit1 = BlocProvider.of<ProductCategoriesCubit>(context);

    return BlocConsumer<ProductCategoriesCubit, ProductCategoriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cubit.categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                cubit1.product_categories(
                    query: cubit.categories[index].id.toString());
                context.read<ProductCategoriesCubit>().product_categories(
                    query: cubit.categories[index].id.toString());
                push(context, "/productCategories");
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 36,
                          backgroundImage:
                              //  AssetImage(Assets.imagesPexelsPhoto911677)
                              NetworkImage(cubit.categories[index].image!)),
                      Text(
                        cubit.categories[index].id.toString(),
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
