import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class image_product extends StatefulWidget {
  const image_product({super.key});

  @override
  State<image_product> createState() => _image_productState();
}

final PageController controller = PageController();
int curren = 0;

class _image_productState extends State<image_product> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 440,
      child: PageView.builder(
          onPageChanged: (index) {
            curren = index;
            setState(() {});
          },
          controller: controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(Assets.imagesPexelsPhoto911677),
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 6),
                  child: SmoothPageIndicator(
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 6,
                      dotWidth: 6,
                    ),
                    controller: controller,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
