import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:e_ecommerce/home_page/models/model_home_product.dart';
import 'package:flutter/material.dart';
part 'cart_cubit_state.dart';

class CartCubitCubit extends Cubit<CartCubitState> {
  CartCubitCubit({required this.api}) : super(CartCubitInitial());
  final ApiConsumer api;

  List<get_product_home> get_cart = [];
  var Total = 0;
  Set<String> Cart_id = {};
  bool plus = true;
  bool? dd = false;
  Future<void> Cart() async {
    get_cart.clear();
    try {
      emit(CartCubitloading());
      final response = await api.get(
        EndPoint.carts,
      );
      print(response);

      for (var item in response['data']['cart_items']) {
        Cart_id.add(item['product']['id'].toString());
        get_cart.add(get_product_home.fromJson(json: item['product']));
      }
      Total = response['data']['total'].toInt();
      emit(CartCubitsuccess());
    } on DioException catch (e) {
      emit(CartCubitfailer(errornMassege: e.message));
    }
  }

  post_cart({
    required String product_id,
  }) async {
    try {
      get_cart.clear();
      emit(postCartCubitloading());
      final response =
          await api.post(EndPoint.carts, data: {'product_id': product_id});

//contains هل القيمه دي تساوي الثانيه
      if (Cart_id.contains(product_id) == true) {
        Cart_id.remove(product_id);
      } else {
        Cart_id.add(product_id);
      }

      await Cart();
      emit(postCartCubitsuccess(errornMassege: response['message']));
    } on DioException catch (e) {
      emit(postCartCubitfailer(errornMassege: e.message));
    }
  }

  List<get_product_home> get_favorite = [];
  Set<String> favorite_id = {};
  Favorites() async {
    try {
      get_favorite.clear();
      emit(Favoritloading());
      final response = await api.get(EndPoint.favorite);
      for (var item in response['data']['data']) {
        favorite_id.add(item['product']['id'].toString());
        get_favorite.add(get_product_home.fromJson(json: item['product']));
      }
      emit(Favoritesuccesss());
    } on DioException catch (e) {
      emit(Favoritefailer(errormessege: e.message.toString()));
    }
  }

  post_Favorites({required String id}) async {
    try {
      emit(postFavoritloading());
      final response =
          await api.post(EndPoint.favorite, data: {'product_id': id});
      favorite_id.contains(id) == true
          ? favorite_id.remove(id)
          : favorite_id.add(id);

      await Favorites();
      emit(postFavoritesuccesss());
    } on DioException catch (e) {
      emit(postFavoritefailer(errormessege: e.message.toString()));
    }
  }
}
