import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class like extends StatefulWidget {
  const like({super.key});

  @override
  State<like> createState() => _likeState();
}

bool current = false;

class _likeState extends State<like> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: CircleAvatar(
        //    backgroundColor: Colors.white,
        child: IconButton(
            onPressed: () {
              current = !current;
              setState(() {});
            },
            icon: current
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  )),
      ),
    );
  }
}
