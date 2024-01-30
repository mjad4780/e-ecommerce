import 'package:e_ecommerce/auth/Screeen_user/login.dart';
import 'package:e_ecommerce/auth/Screeen_user/rigster.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:flutter/material.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        //   borderRadius: BorderRadius.circular(12),
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFormButton(
            innerText: 'Rigster',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Rigster()));
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
