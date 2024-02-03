part of 'home_page_cubit.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class bottomNagation extends HomePageState {}

final class loadingbanners extends HomePageState {}

final class successbanners extends HomePageState {}

final class failerpanners extends HomePageState {
  String? error;
  failerpanners({this.error});
}
