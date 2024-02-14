import 'package:dio/dio.dart';
import 'package:e_ecommerce/categories/cubit/product_categories_cubit.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/core/api/dio_consumer.dart';
import 'package:e_ecommerce/favorite/widget/favorite.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Logic_search extends StatelessWidget {
  const Logic_search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit2 = BlocProvider.of<ProductCategoriesCubit>(context);

    return Scaffold(
      body: BlocConsumer<ProductCategoriesCubit, ProductCategoriesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state is Searchloading
              ? CircularProgressIndicator()
              : Padding(
                  padding: EdgeInsets.all(12.0),
                  child: CustomInputField(
                    controller: cubit2.search,
                    suffixIcon2: IconButton(
                        onPressed: () {
                          cubit2.Search(searc: cubit2.search.text);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Search()));
                        },
                        icon: Icon(Icons.search)),
                    hintText: 'search',
                  ),
                );
        },
      ),
    );
  }
}
