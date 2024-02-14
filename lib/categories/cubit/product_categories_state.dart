part of 'product_categories_cubit.dart';

@immutable
sealed class ProductCategoriesState {}

final class ProductCategoriesInitial extends ProductCategoriesState {}

final class ProductCategoriesloading extends ProductCategoriesState {}

final class ProductCategoriessuccess extends ProductCategoriesState {}

final class ProductCategoriesfailer extends ProductCategoriesState {
  final String error;

  ProductCategoriesfailer({required this.error});
}

final class Searchloading extends ProductCategoriesState {}

final class Searchssuccess extends ProductCategoriesState {
  final List<get_product_home> Search1;

  Searchssuccess({required this.Search1});
}

final class Searchfailer extends ProductCategoriesState {
  final String error;

  Searchfailer({required this.error});
}
