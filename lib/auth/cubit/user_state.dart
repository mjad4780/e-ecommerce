import 'package:e_ecommerce/auth/models/profile_models.dart';

class UserState {}

final class UserInitial extends UserState {}

final class SignInSuccess extends UserState {}

final class UploadProfilePic extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

final class SignUpSuccess extends UserState {
  final String message;

  SignUpSuccess({required this.message});
}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

final class profilSuccess extends UserState {
  final profil user;

  profilSuccess({required this.user});
}

final class profilLoading extends UserState {}

final class profilFailure extends UserState {
  final String errMessage;

  profilFailure({required this.errMessage});
}
