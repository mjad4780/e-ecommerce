import 'package:dio/dio.dart';
import 'package:e_ecommerce/auth/cubit/user_cubit.dart';

import 'package:e_ecommerce/core/api/dio_consumer.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/core/cache/const.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.cacheIn();
  token = CacheHelper.getDataString(key: ApiKey.token);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => UserCubit(api: DioConsumer(dio: Dio()))),
        BlocProvider(
            create: (context) =>
                HomePageCubit(api: DioConsumer(dio: Dio()))..Banners())
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      ),
    );
  }
}
