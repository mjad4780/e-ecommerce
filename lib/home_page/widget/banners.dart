import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class banner extends StatefulWidget {
  const banner({super.key});

  @override
  State<banner> createState() => _bannerState();
}

class _bannerState extends State<banner> {
  final PageController pageController = PageController();
  int current = 0;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);

    return SizedBox(
      height: 444,
      child: PageView.builder(
          onPageChanged: (index) {
            current = index;
            setState(() {});
          },
          controller: pageController,
          itemCount: 3,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListView(
                  children: [
                    Image.network(
                      cubit.banners2[index].image!,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160, top: 6),
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 6,
                          dotWidth: 6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}











// SizedBox banners(HomePageCubit cubit) {
//     return 
//   }
// }
