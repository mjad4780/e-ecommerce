import 'package:e_ecommerce/splash_screen.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: splash_screen(),
    );
  }
}

class homee extends StatelessWidget {
  const homee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          CustomInputField(
            //s isDense: true,
            obscureText: true,
            suffixIcon: true,
            labelText: 'email',
            hintText: 'eemail',
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(child: Image.asset('assets/images/bags.png')),
          Text(
            'hello',
            style: TextStyle(fontFamily: 'Pacifico'),
          )
        ],
      ),
    );
  }
}
