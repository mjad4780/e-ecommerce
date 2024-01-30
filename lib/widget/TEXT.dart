import 'package:flutter/material.dart';

class input_text extends StatelessWidget {
  const input_text({
    super.key,
    this.fontSize = 22,
    this.color,
    this.onTap,
    required this.text,
  });
  final double fontSize;
  final Color? color;
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
              onTap: onTap,
              child: Text(text,
                  style: TextStyle(fontSize: fontSize, color: color))),
        ),
      ],
    );
  }
}
