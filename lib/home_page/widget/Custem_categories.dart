import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';

class Custem_categories extends StatelessWidget {
  const Custem_categories({super.key, required this.cubit});
  final HomePageCubit cubit;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cubit.categories.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            child: Column(
              children: [
                CircleAvatar(
                    radius: 36,
                    backgroundImage:
                        //  AssetImage(Assets.imagesPexelsPhoto911677)
                        NetworkImage(cubit.categories[index].image!)),
                Text(
                  cubit.categories[index].name!,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
