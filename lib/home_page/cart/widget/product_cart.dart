import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/core/cache/const.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:e_ecommerce/home_page/cart/widget/current_cart.dart';
import 'package:e_ecommerce/widget/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class product_cart extends StatelessWidget {
  const product_cart({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomePageCubit>(context);
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ListView.builder(

            //physics: NeverScrollableScrollPhysics(),
            //  itemCount: cubit.basketitem.length,
            itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 226, 226),
                  borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              height: 140,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Image(
                      image: AssetImage('cubit.basketitem[index].image'),
                      height: double.infinity,
                      width: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('ubit.basketitem[index].name'),
                        current()
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '4'
                          // cubit.basketitem[index].price.toString(),
                          ,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
