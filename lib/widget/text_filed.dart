import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final String hintText;
  final bool suffixIcon;
  final bool? isDense;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomInputField(
      {super.key,
      required this.hintText,
      this.suffixIcon = false,
      this.isDense,
      this.validator,
      this.obscureText = false,
      this.controller});

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      child: Column(
        children: [
          TextFormField(
            obscureText: (widget.obscureText && _obscureText),
            decoration: InputDecoration(
                isDense: (widget.isDense != null) ? widget.isDense : false,
                hintText: widget.hintText,
                suffixIcon: widget.suffixIcon
                    ? IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.remove_red_eye
                              : Icons.visibility_off_outlined,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )
                    : null,
                suffixIconConstraints: (widget.isDense != null)
                    ? const BoxConstraints(maxHeight: 33)
                    : null,
                hintStyle: const TextStyle(
                    color: const Color.fromARGB(255, 224, 216, 216)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: const Color.fromARGB(255, 117, 113, 113))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        style: BorderStyle.none,
                        color: const Color.fromARGB(255, 95, 88, 88)))),
            validator: widget.validator,
            controller: widget.controller,
          ),
        ],
      ),
    );
  }
}
