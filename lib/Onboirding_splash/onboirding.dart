import 'package:e_ecommerce/Onboirding_splash/inboiding.dart';
import 'package:e_ecommerce/Onboirding_splash/widget/if_isbourding.dart';
import 'package:e_ecommerce/Onboirding_splash/widget/skip.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboirding extends StatefulWidget {
  Onboirding({super.key});

  @override
  State<Onboirding> createState() => _OnboirdingState();
}

class _OnboirdingState extends State<Onboirding> {
  final PageController pageController = PageController();

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          const skip(),
          const SizedBox(
            height: 22,
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                current = index;
                setState(() {});
              },
              controller: pageController,
              itemCount: onboidin.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                        height: 500,
                        width: 450,
                        child: Image(image: AssetImage(onboidin[index].path))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 11,
                          dotWidth: 16,
                        ),
                      ),
                    ),
                    Text(onboidin[index].title),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(onboidin[index].des),
                    const SizedBox(
                      height: 30,
                    ),
                    if_botom(
                      cucurrent: current,
                      pageController: pageController,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
