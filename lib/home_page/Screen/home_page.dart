import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';
import 'package:e_ecommerce/categories/cubit/product_categories_cubit.dart';
import 'package:e_ecommerce/home_page/Screen/Ui_Search.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/categories/widget/Custem_categories.dart';
import 'package:e_ecommerce/home_page/widget/banners.dart';
import 'package:e_ecommerce/home_page/widget/product_home_page_card.dart';
import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home_page extends StatelessWidget {
  home_page({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit2 = BlocProvider.of<ProductCategoriesCubit>(context);
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return Scaffold(
            body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: CustomInputField(
                onChanged: (value) {
                  cubit.Filter(input: value!);
                },
                controller: cubit2.search,
                suffixIcon2: IconButton(
                    onPressed: () {
                      cubit2.Search(searc: cubit2.search.text);

                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                    icon: Icon(Icons.search)),
                hintText: 'search',
              ),
            ),
            state is loadingbanners ||
                    /////////
                    state is loadingcategories ||
                    state is postCartCubitloading
                ? const Center(child: CircularProgressIndicator())
                : const banner(),
            input_text(text: 'Categories'),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 130,
              child: Custem_categories(
                cubit: cubit,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Product',
                style: TextStyle(fontSize: 22),
              ),
            ),
            product_home_page(
              cubit: cubit,
            ),
          ],
        ));
      },
    );
  }
}
