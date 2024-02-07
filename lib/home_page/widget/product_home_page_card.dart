import 'package:e_ecommerce/Onboirding_splash/inboiding.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/home_page/widget/Like.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product_home_page_card extends StatelessWidget {
  const product_home_page_card({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: onboidin.length,
        padding: const EdgeInsets.only(top: 22, left: 18, right: 18),
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.9, //haih=ght
            crossAxisSpacing: 10,
            mainAxisSpacing: 40,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Stack(clipBehavior: Clip.none, children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.2),
                    blurRadius: 22, //الظل
                    offset: Offset(10, 10))
              ]),
              child: const Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('onboidi title'),
                      Text(
                        'T-Shirt SPANISH',
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '66',
                            style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text(
                            r'$' '664',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: -11,
              child: Image.asset(
                Assets.imagesPexelsPhoto911677,
                width: 150,
                height: 100,
              ),
            ),
            Positioned(right: 6, top: 90, child: like())
          ]);
        });
  }
}
