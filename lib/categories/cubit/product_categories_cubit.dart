import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_ecommerce/categories/model/product_categories.dart';
import 'package:e_ecommerce/categories/model/product_categories.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:e_ecommerce/home_page/models/model_home_product.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'product_categories_state.dart';

class ProductCategoriesCubit extends Cubit<ProductCategoriesState> {
  ProductCategoriesCubit({required this.api})
      : super(ProductCategoriesInitial());
  final ApiConsumer api;
  TextEditingController search = TextEditingController();

  List<get_product_home> get_product_categories = [];
  //Set<String> favorite_id = {};
  product_categories({required String query}) async {
    try {
      get_product_categories.clear();
      emit(ProductCategoriesloading());
      final response = await api.get('categories/$query');
      // get_product_categories =
      // Product.fromJson(json: response['data']['data']) as List<Product>;
      // get_product_categories=Product.fromJson(json: item['data'])
      for (var item in response['data']['data']) {
        get_product_categories.add(get_product_home.fromJson(json: item));
      }
      emit(ProductCategoriessuccess());
    } on DioException catch (e) {
      emit(ProductCategoriesfailer(error: e.message.toString()));
    }
  }

  List<get_product_home> search1 = [];
  //Set<String> favorite_id = {};
  void Search({required String searc}) async {
    try {
      //  get_favorite.clear();
      emit(Searchloading());
      Map<String, dynamic> response =
          await api.post(EndPoint.search, data: {"text": searc});
      print(
          '#################################################################################################################');
      print(search);
      print(
          '#################################################################################################################');
      print(response);
      for (var item in response['data']['data']) {
        search1.add(get_product_home.fromJson(json: item));
        print(search1);
      }
      emit(Searchssuccess());
    } on DioException catch (e) {
      emit(Searchfailer(error: e.message.toString()));
    }
  }
}
