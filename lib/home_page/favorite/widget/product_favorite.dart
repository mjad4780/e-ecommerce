import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/home_page/favorite/widget/rating.dart';
import 'package:flutter/material.dart';

class product_favorite extends StatelessWidget {
  const product_favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 206, 206),
                  borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              height: 140,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Image(
                      image: AssetImage(
                        Assets.imagesPexelsPhoto911677,
                      ),
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
                        Text('dadxhgfta'),
                        Text('dfjfchfc'),
                        Text('34434')
                      ],
                    ),
                  ),
                  Rating(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
