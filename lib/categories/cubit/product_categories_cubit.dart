import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:e_ecommerce/home_page/models/model_home_product.dart';
import 'package:flutter/material.dart';

part 'product_categories_state.dart';

class ProductCategoriesCubit extends Cubit<ProductCategoriesState> {
  ProductCategoriesCubit({required this.api})
      : super(ProductCategoriesInitial());
  final ApiConsumer api;
  TextEditingController search = TextEditingController();

  List<get_product_home> get_product_categories = [];

  product_categories({required String query}) async {
    try {
      //  get_product_categories.clear();
      emit(ProductCategoriesloading());
      final response = await api.get('categories/$query');

      for (var item in response['data']['data']) {
        get_product_categories.add(get_product_home.fromJson(json: item));
      }

      emit(ProductCategoriessuccess());
    } on DioException catch (e) {
      emit(ProductCategoriesfailer(error: e.message.toString()));
    }
  }

  List<get_product_home> search1 = [];
  Search({required String searc}) async {
    try {
      search1.clear();
      emit(Searchloading());
      Map<String, dynamic> response =
          await api.post(EndPoint.search, data: {"text": searc});

      for (var item in response['data']['data']) {
        search1.add(get_product_home.fromJson(json: item));
      }

      emit(Searchssuccess(Search1: search1));
    } on DioException catch (e) {
      emit(Searchfailer(error: e.message.toString()));
    }
  }
}
