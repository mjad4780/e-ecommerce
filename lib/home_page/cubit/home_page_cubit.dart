import 'package:bloc/bloc.dart';
import 'package:e_ecommerce/home_page/Screen/Home_start_Bottom.dart';
import 'package:e_ecommerce/home_page/Screen/cart.dart';
import 'package:e_ecommerce/home_page/Screen/favorite.dart';
import 'package:e_ecommerce/home_page/Screen/home_page.dart';
import 'package:e_ecommerce/home_page/Screen/profile.dart';
import 'package:e_ecommerce/home_page/Screen/shopping.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  int currentbottom = 0;
  List<Widget> bottomscreen = [
    home_page(),
    cart(),
    shopping(),
    favorite(),
    profile()
  ];

  void currentbootomnav({required int index}) {
    currentbottom = index;
    emit(bottomNagation());
  }
}
