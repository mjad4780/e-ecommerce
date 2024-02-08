import 'package:e_ecommerce/Onboirding_splash/Start.dart';
import 'package:e_ecommerce/Onboirding_splash/onboirding.dart';
import 'package:e_ecommerce/Onboirding_splash/splash_screen.dart';
import 'package:e_ecommerce/auth/Screeen_user/forget_password.dart';
import 'package:e_ecommerce/auth/Screeen_user/login.dart';
import 'package:e_ecommerce/auth/Screeen_user/rigster.dart';
import 'package:e_ecommerce/auth/Screeen_user/user_profile.dart';
import 'package:e_ecommerce/home_page/Screen/cart.dart';
import 'package:e_ecommerce/favorite/screen/favorite.dart';
import 'package:e_ecommerce/home_page/Screen/home_page.dart';
import 'package:e_ecommerce/home_page/Screen/product.dart';
import 'package:e_ecommerce/home_page/widget/bottomNavigation.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => Home_start_Bottom(),
  ),
  GoRoute(
    path: "/start",
    builder: (context, state) => start(),
  ),
  GoRoute(
    path: "/Login",
    builder: (context, state) => Login(),
  ),
  GoRoute(
    path: "/Rigster",
    builder: (context, state) => Rigster(),
  ),
  GoRoute(
    path: "/Onboirding",
    builder: (context, state) => Onboirding(),
  ),
  GoRoute(
    path: "/forget_password",
    builder: (context, state) => forget_password(),
  ),
  GoRoute(
    path: "/profile",
    builder: (context, state) => profile(),
  ),
  GoRoute(
    path: "/Home_start_Bottom",
    builder: (context, state) => Home_start_Bottom(),
  ),
  // GoRoute(
  //   path: "/Product",
  //   builder: (context, state) => Product(),
  // ),
]);

void push(context, String path) {
  GoRouter.of(context).push(path);
}

void pushpushReplacement(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
