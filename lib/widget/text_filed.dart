import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final Widget? icon;
  final Function(String?)? onChanged;
  final Widget? suffixIcon2;
  final Widget? label;
  final Widget? suffix;
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
      this.onChanged,
      this.isDense,
      this.validator,
      this.obscureText = false,
      this.controller,
      this.icon,
      this.suffix,
      this.label,
      this.suffixIcon2});

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: (widget.obscureText && _obscureText),
      decoration: InputDecoration(
          label: widget.label,
          suffix: widget.suffix,
          icon: widget.icon,
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
              : widget.suffixIcon2, //Iconدي عملناها لكي نضع ثلاث
          suffixIconConstraints: (widget.isDense != null)
              ? const BoxConstraints(maxHeight: 33)
              : null,
          hintStyle:
              const TextStyle(color: const Color.fromARGB(255, 224, 216, 216)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(
                  color: const Color.fromARGB(255, 117, 113, 113))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(
                  style: BorderStyle.none,
                  color: const Color.fromARGB(255, 95, 88, 88)))),
      validator: widget.validator,
      controller: widget.controller,
    );
  }
}
