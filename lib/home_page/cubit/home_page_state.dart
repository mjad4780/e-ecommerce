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

final class loadingcategories extends HomePageState {}

final class successcategories extends HomePageState {}

final class failercategories extends HomePageState {
  String? error;
  failercategories({this.error});
}

final class successcurrent extends HomePageState {}

final class successshop extends HomePageState {}

final class loadingchomeproduct extends HomePageState {}

final class successhomeproduct extends HomePageState {}

final class failerhomeproduct extends HomePageState {
  String? error;
  failerhomeproduct({this.error});
}

final class Filteroutsuccess extends HomePageState {}
