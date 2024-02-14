// import 'package:e_ecommerce/favorite/cubit/favorite_cubit.dart';
// import 'package:e_ecommerce/home_page/models/model_home_product.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class like extends StatelessWidget {
//   const like({super.key, required this.product});
//   final get_product_home product;

//   @override
//   Widget build(BuildContext context) {
//     final cubit = BlocProvider.of<FavoriteCubit>(context);

//     return BlocConsumer<FavoriteCubit, FavoriteState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Container(
//           decoration: BoxDecoration(
//               color: Colors.grey.withOpacity(.4),
//               shape: BoxShape.circle,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey.withOpacity(.2),
//                     blurRadius: 11, //الظل
//                     offset: Offset(4, 4))
//               ]),
//           width: 60,
//           height: 50,
//           padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
//           child: CircleAvatar(
//             child: IconButton(
//                 onPressed: () {
//                   cubit.post_Favorites(id: product[i].toString());
//                 },
//                 icon: cubit.favorite_id.contains(product)
//                     ? const Icon(
//                         Icons.favorite,
//                         color: Colors.red,
//                       )
//                     : const Icon(
//                         Icons.favorite,
//                         color: Colors.white,
//                       )),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:e_ecommerce/cart/cubit/cart_cubit_cubit.dart';
import 'package:e_ecommerce/home_page/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Like extends StatelessWidget {
  const Like(
      {super.key,
      required this.cubit,
      required this.index,
      required this.cubit1});
  final HomePageCubit cubit;
  final CartCubitCubit cubit1;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubitCubit, CartCubitState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Positioned(
            right: 6,
            top: 90,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.4),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 11, //الظل
                        offset: Offset(4, 4))
                  ]),
              width: 60,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              child: IconButton(
                  onPressed: () {
                    cubit1.post_Favorites(
                        id: cubit.product_home[index].id.toString());
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: cubit1.favorite_id
                            .contains(cubit.product_home[index].id.toString())
                        ? Colors.red
                        : Colors.white,
                  )),
            ));
      },
    );
  }
}
