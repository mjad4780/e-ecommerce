import 'package:e_ecommerce/core/assets2/app_assets.dart';
import 'package:e_ecommerce/home_page/widget/current_cart.dart';
import 'package:e_ecommerce/widget/test.dart';
import 'package:flutter/material.dart';

class product_cart extends StatelessWidget {
  const product_cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: hello.length,
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
                          children: [Text('dadxhgfta'), current()],
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
                              hello[index].price.toString(),
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
