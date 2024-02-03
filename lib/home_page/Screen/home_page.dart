import 'package:e_ecommerce/Onboirding_splash/inboiding.dart';
import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/widget/banners.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body: ListView(
          children: [
            CustomInputField(
              hintText: 'search',
            ),
            SizedBox(
              height: 2,
            ),
            state is loadingbanners
                ? Center(child: CircularProgressIndicator())
                : banner(),
          ],
        ));
      },
    );
  }
}
