import 'package:e_ecommerce/Onboirding_splash/inboiding.dart';
import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:flutter/material.dart';

class if_botom extends StatelessWidget {
  const if_botom(
      {super.key, required this.cucurrent, required this.pageController});

  final PageController pageController;
  final int cucurrent;
  @override
  Widget build(BuildContext context) {
    if (cucurrent == onboidin.length - 1) {
      return CustomFormButton(
        onPressed: () {
          CacheHelper.saveData(key: "isbourding", value: true);
          push(context, '/start');
        },
        innerText: 'text',
      );
    } else {
      return CustomFormButton(
        onPressed: () {
          pageController.nextPage(
              duration: Duration(microseconds: 200), curve: Curves.bounceIn);
        },
        innerText: 'Text',
      );
    }
  }
}
