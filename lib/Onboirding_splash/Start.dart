import 'package:e_ecommerce/auth/cubit/user_cubit.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:flutter/material.dart';

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        //  borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage('assets/images/image.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFormButton(
            innerText: 'Login',
            onPressed: () {
              push(context, '/Login');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFormButton(
            innerText: 'Rigster',
            onPressed: () {
              push(context, '/Rigster');
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
