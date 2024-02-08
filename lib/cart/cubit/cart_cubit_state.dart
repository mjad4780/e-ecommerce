part of 'cart_cubit_cubit.dart';

@immutable
sealed class CartCubitState {}

final class CartCubitInitial extends CartCubitState {}

final class CartCubitloading extends CartCubitState {}

final class CartCubitsuccess extends CartCubitState {}

final class CartCubitfailer extends CartCubitState {
  final String? errornMassege;

  CartCubitfailer({required this.errornMassege});
}

final class postCartCubitloading extends CartCubitState {}

final class postCartCubitsuccess extends CartCubitState {
  final String errornMassege;

  postCartCubitsuccess({required this.errornMassege});
}

final class postCartCubitfailer extends CartCubitState {
  final String? errornMassege;

  postCartCubitfailer({required this.errornMassege});
}
