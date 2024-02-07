import 'package:e_ecommerce/auth/Screeen_user/user_profile.dart';
import 'package:e_ecommerce/home_page/models/model_home_product.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class image_product extends StatefulWidget {
  const image_product({super.key, required this.product});
  final get_product_home product;
  @override
  State<image_product> createState() => _image_productState();
}

final PageController controller = PageController();

@override
class _image_productState extends State<image_product> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 440,
      child: PageView.builder(
          controller: controller,
          itemCount: widget.product.images!.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image:
                        NetworkImage(widget.product.images![index].toString()),
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 6),
                  child: SmoothPageIndicator(
                    count: widget.product.images!.length,
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
