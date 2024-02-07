import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:flutter/material.dart';

class current extends StatefulWidget {
  const current({
    super.key,
  });

  @override
  State<current> createState() => _currentState();
}

int curent = 0;
void ser(bool sea) {
  if (sea) {
    curent = curent + 1;
  } else if (curent == 0) {
    curent = 0;
  } else {
    curent = curent - 1;
  }
  CacheHelper.saveData(key: 'hello', value: curent) ?? '222';
}

class _currentState extends State<current> {
  @override
  void initState() {
    var cubit1 = CacheHelper.getData(key: 'hello');
    if (cubit1 == null) {
      curent = 11;
    } else if (cubit1 != null) {
      curent = cubit1;
    } else {
      curent = 222;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            ser(true);
            setState(() {});
          },
        ),
        Padding(
          padding: EdgeInsets.all(7.0),
          child: Text(
            curent.toString(),
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
            ser(false);
            setState(() {});
          },
        ),
      ],
    );
  }
}
