import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/widget/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home_start_Bottom extends StatelessWidget {
  const Home_start_Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            bottomNavigationBar: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(22)),
                  child: GNav(
                    gap: 8, //بعد الاسم عن الايقون
                    color: Colors.white, //لون الايقون
                    activeColor: Colors.blue, //لون المتفعل
                    padding: EdgeInsets.all(16),
                    selectedIndex: context.read<HomePageCubit>().currentbottom,
                    onTabChange: (index) {
                      context
                          .read<HomePageCubit>()
                          .currentbootomnav(index: index);
                    },
                    tabs: const [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.shopping_cart,
                        text: 'cart',
                      ),
                      GButton(
                        icon: Icons.shopping_bag,
                        text: 'shopping',
                      ),
                      GButton(
                        icon: Icons.favorite,
                        text: 'Likes',
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'profile',
                      ),
                    ],
                  ),
                )),
            body: cubit.bottomscreen[cubit.currentbottom]);
      },
    );
  }
}
