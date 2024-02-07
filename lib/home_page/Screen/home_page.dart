import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:e_ecommerce/core/cache/const.dart';
import 'package:e_ecommerce/home_page/Screen/product.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/cart/model/get_cart_product.dart';
import 'package:e_ecommerce/home_page/widget/Custem_categories.dart';
import 'package:e_ecommerce/home_page/favorite/widget/Like.dart';
import 'package:e_ecommerce/home_page/widget/banners.dart';
import 'package:e_ecommerce/home_page/widget/product_home_page_card.dart';
import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool current = true;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return Scaffold(
            body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: CustomInputField(
                suffixIcon2: Icon(Icons.search),
                hintText: 'search',
              ),
            ),
            state is loadingbanners || state is loadingcategories
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
