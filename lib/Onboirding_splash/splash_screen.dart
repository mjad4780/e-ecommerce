import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/core/assets2/app_assets.dart';

import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    bool isboirding = CacheHelper.getData(key: 'isbourding') ?? false;
    if (isboirding == true) {
      delayed(context, '/start');
    } else {
      delayed(context, '/Onboirding');
    }

    super.initState();
  }

  void delayed(context, String path) {
    Future.delayed(Duration(seconds: 3), () {
      pushpushReplacement(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesSplashScree012x);
  }
}
