import 'package:e_ecommerce/widget/text.dart';
import 'package:flutter/material.dart';

class app_Apr_favorite extends StatelessWidget {
  const app_Apr_favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 230,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.2),
              blurRadius: 22, //الظل
              offset: Offset(10, 10))
        ]),
        child: Column(
          children: [
            const Search(),
            const SizedBox(
              height: 11,
            ),
            input_text(
              text: 'Favorites',
              fontSize: 40,
            ),
            const SizedBox(
              height: 11,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Favorite_Icon(
                  icon: Icon(Icons.filter),
                  name: 'Filter',
                ),
                Favorite_Icon(
                  icon: Icon(Icons.data_usage_sharp),
                  name: 'Pike',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, right: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 35,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}

class Favorite_Icon extends StatelessWidget {
  const Favorite_Icon({
    super.key,
    this.icon,
    this.name,
  });
  final Widget? icon;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: icon!),
          SizedBox(
            width: 3,
          ),
          Text(
            name!,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
