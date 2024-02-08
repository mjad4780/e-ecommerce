import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';
import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Current extends StatelessWidget {
  const Current({
    super.key,
  });

  @override
  // void initState() {
  //   var cubit1 = CacheHelper.getData(key: 'hello');
  //   if (cubit1 == null) {
  //     curent = 11;
  //   } else if (cubit1 != null) {
  //     curent = cubit1;
  //   } else {
  //     curent = 222;
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CartCubitCubit>(context);
    final cubit1 = BlocProvider.of<HomePageCubit>(context);
    // var cubit1 = CacheHelper.getData(key: 'hello');
    // if (cubit1 != null) {
    //   cubit.c = cubit1;

    // }
    return Row(
      children: [
        IconButton(
          icon: Card(
            elevation: 7,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.plus_one_sharp,
                size: 30,
              ),
            ),
          ),
          onPressed: () {
            cubit.plus;
          },
        ),
        Padding(
          padding: EdgeInsets.all(7.0),
          child: Text(
            //  cuget_cartbit.
            // cubit.curent.toString(),
            'g',
            style: TextStyle(fontSize: 25),
          ),
        ),
        IconButton(
          icon: Card(
            elevation: 7,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.plus_one_sharp,
                size: 30,
              ),
            ),
          ),
          onPressed: () {
            cubit.dd;
          },
        ),
      ],
    );
  }
}
