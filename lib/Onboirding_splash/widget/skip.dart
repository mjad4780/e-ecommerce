import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:flutter/material.dart';

class skip extends StatelessWidget {
  const skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () => pushpushReplacement(context, '/start'),
            child: Text(
              'skip',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
