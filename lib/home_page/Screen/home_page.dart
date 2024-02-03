import 'package:e_ecommerce/Onboirding_splash/inboiding.dart';
import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/widget/banners.dart';
import 'package:e_ecommerce/widget/text.dart';
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
            const Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomInputField(
                suffixIcon2: Icon(Icons.search),
                hintText: 'search',
              ),
            ),
            state is loadingbanners || state is loadingcategories
                ? Center(child: CircularProgressIndicator())
                : banner(),
            input_text(text: 'Categories'),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 222,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cubit.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 36,
                            backgroundImage:
                                //  AssetImage(Assets.imagesPexelsPhoto911677)
                                NetworkImage(cubit.categories[index].image!)),
                        Text(
                          cubit.categories[index].name!,
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ));
      },
    );
  }

  // Padding categoriess() {
  //       final cubit = BlocProvider.of<HomePageCubit>(context);

  //   return const Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Column(
  //       children: [
  //         CircleAvatar(
  //             radius: 36,
  //             backgroundImage: NetworkImage()),
  //         Text(
  //    ,
  //           style: TextStyle(fontSize: 16),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
