import 'package:e_ecommerce/main.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => homee()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/Splash Screen 01@2x.png');
  }
}
