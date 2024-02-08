import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_ecommerce/cart/model/get_cart_product.dart';
import 'package:e_ecommerce/core/api/api_consumer.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:meta/meta.dart';

part 'cart_cubit_state.dart';

class CartCubitCubit extends Cubit<CartCubitState> {
  CartCubitCubit({required this.api}) : super(CartCubitInitial());
  final ApiConsumer api;

  List<Product> get_cart = [];
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

      print(Total);
      for (var item in response['data']['cart_items']) {
        Cart_id.add(item['product']['id'].toString());
        get_cart.add(Product.fromJson(json: item['product']));
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
      print(response);
//contains هل القيمه دي تساوي الثانيه
      if (Cart_id.contains(product_id) == true) {
        plus = Cart_id.remove(product_id);
      } else {
        dd = Cart_id.add(product_id);
      }
      // if (Cart_id.contains(product_id) == true) {
      //   Cart_id.remove(product_id);
      // } else {
      //   Cart_id.add(product_id);
      // }

      await Cart();
      emit(postCartCubitsuccess(errornMassege: response['message']));
    } on DioException catch (e) {
      emit(postCartCubitfailer(errornMassege: e.message));
    }
  }
}
