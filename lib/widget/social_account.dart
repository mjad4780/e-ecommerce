import 'package:flutter/material.dart';

class social_account extends StatelessWidget {
  const social_account({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            child: const Image(
          image: AssetImage(
            'assets/images/Google.png',
          ),
          width: 100,
        )),
        const SizedBox(
          width: 11,
        ),
        GestureDetector(
            child: const Image(
          image: AssetImage(
            'assets/images/Google.png',
          ),
          width: 100,
        )),
      ],
    );
  }
}
