import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:e_ecommerce/home_page/Screen/cart.dart';
import 'package:e_ecommerce/home_page/Screen/favorite.dart';
import 'package:e_ecommerce/home_page/Screen/home_page.dart';
import 'package:e_ecommerce/home_page/Screen/profile.dart';
import 'package:e_ecommerce/home_page/Screen/shopping.dart';
import 'package:e_ecommerce/home_page/models/categories.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit({required this.api}) : super(HomePageInitial());

  final ApiConsumer api;

  int currentbottom = 0;
  List<Widget> bottomscreen = [
    home_page(),
    cart(),
    shopping(),
    favorite(),
    profile()
  ];

  void currentbootomnav({required int index}) {
    currentbottom = index;
    emit(bottomNagation());
  }

  List<banners> banners2 = [];
  Banners() async {
    try {
      emit(loadingbanners());
      final response = await api.get(EndPoint.banners);

      for (var item in response['data']) {
        banners2.add(banners.fromJson(json: item));
      }

      emit(successbanners());
    } on DioException catch (e) {
      emit(failerpanners(error: e.message));
    }
  }
}
