// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:e_ecommerce/core/api/api_consumer.dart';
// import 'package:e_ecommerce/core/api/end_ponits.dart';
// import 'package:e_ecommerce/favorite/model/get_favorite.dart';
// import 'package:meta/meta.dart';

// part 'favorite_state.dart';

// class FavoriteCubit extends Cubit<FavoriteState> {
//   FavoriteCubit({required this.api}) : super(FavoriteInitial());

//   final ApiConsumer api;

//   // List<Product> get_favorite = [];
//   // Set<String> favorite_id = {};
//   // Favorites() async {
//   //   try {
//   //     get_favorite.clear();
//   //     emit(Favoritloading());
//   //     final response = await api.get(EndPoint.favorite);
//   //     for (var item in response['data']['data']) {
//   //       favorite_id.add(item['product']['id'].toString());
//   //       get_favorite.add(Product.fromJson(json: item['product']));
//   //     }
//   //     emit(Favoritesuccesss());
//   //   } on DioException catch (e) {
//   //     emit(Favoritefailer(errormessege: e.message.toString()));
//   //   }
//   // }

//   // post_Favorites({required String id}) async {
//   //   try {
//   //     emit(postFavoritloading());
//   //     final response =
//   //         await api.post(EndPoint.favorite, data: {'product_id': id});
//   //     favorite_id.contains(id) == true
//   //         ? favorite_id.remove(id)
//   //         : favorite_id.add(id);

//   //     await Favorites();
//   //     emit(postFavoritesuccesss());
//   //   } on DioException catch (e) {
//   //     emit(postFavoritefailer(errormessege: e.message.toString()));
//   //   }
//   // }
// }
