import 'package:e_ecommerce/auth/Screeen_user/user_profile.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';

import 'package:e_ecommerce/core/cache/const.dart';
import 'package:e_ecommerce/home_page/widget/bottomNavigation.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:flutter/material.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return token != "" && token != null
        ? Home_start_Bottom()
        : Container(
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
