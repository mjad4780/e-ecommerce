import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(
                Icons.star,
                size: 15,
              ),
              Icon(
                Icons.star,
                size: 15,
              ),
              Icon(
                Icons.star,
                size: 15,
              ),
              Icon(
                Icons.star,
                size: 15,
              ),
              Icon(
                Icons.star,
                size: 15,
              ),
              Text('(10)')
            ],
          )
        ],
      ),
    );
  }
}
