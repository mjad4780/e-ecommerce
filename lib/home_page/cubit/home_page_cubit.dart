import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:e_ecommerce/home_page/Screen/cart.dart';
import 'package:e_ecommerce/favorite/screen/favorite.dart';
import 'package:e_ecommerce/home_page/Screen/home_page.dart';
import 'package:e_ecommerce/profile/screen/profile.dart';
import 'package:e_ecommerce/shoping/screen/shopping.dart';
import 'package:e_ecommerce/home_page/models/home_page.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/home_page/models/model_home_product.dart';
import 'package:e_ecommerce/widget/test.dart';
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

  List<Categories> categories = [];
  Categoriess() async {
    try {
      emit(loadingcategories());
      final response = await api.get(EndPoint.categories);

      for (var item in response['data']['data']) {
        categories.add(Categories.fromJson(json: item));
      }

      emit(successcategories());
    } on DioException catch (e) {
      emit(failercategories(error: e.message));
    }
  }

  List<get_product_home> product_home = [];
  void HomeProduct() async {
    try {
      emit(loadingchomeproduct());
      final response = await api.get(EndPoint.home);
      print(response);
      for (var item in response['data']['products']) {
        product_home.add(get_product_home.fromJson(json: item));
      }

      emit(successhomeproduct());
    } on DioException catch (e) {
      emit(failerhomeproduct(error: e.message));
    }
  }
}










//  List<ClassName> item = [];
//   double Price = 0.0;
//   int curent = 0;
//   shop(ClassName className) {
//     item.add(className);
//     Price += className.price;
//     curent = count;

//     emit(successshop());
//   }

//   int get count {
//     return item.length;
    
//   }

//   double get Total {
//     return Price;
//   }

//   List<ClassName> get basketitem {
//     return item;
//   }

//   void ser(bool sea) {
//     if (sea) {
//       curent = curent + 1;
//     } else if (curent == 0) {
//       curent = 0;
//     } else {
//       curent = curent - 1;
//     }
//     //  CacheHelper.saveData(key: 'hello', value: curent) ?? '222';
//     emit(successcurrent());
//   }

//   remove(ClassName className) {
//     item.remove(className);
//     Price -= className.price;

//     emit(successshop());
//   }
