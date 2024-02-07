import 'package:flutter/material.dart';

class Drob_dawm_menu extends StatefulWidget {
  const Drob_dawm_menu({
    super.key,
    required this.label,
    required this.dropdownMenuEntries,
  });
  final String label;
  final List<DropdownMenuEntry<dynamic>> dropdownMenuEntries;
  @override
  State<Drob_dawm_menu> createState() => _Drob_dawm_menuState();
}

TextEditingController controller = TextEditingController();

class _Drob_dawm_menuState extends State<Drob_dawm_menu> {
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownMenu(
        enableSearch: true,
        enableFilter: true,
        label: Text(widget.label),
        controller: controller,
        inputDecorationTheme: InputDecorationTheme(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        dropdownMenuEntries: widget.dropdownMenuEntries,
        onSelected: (value) {
          if (value != null) {
            color = value;
            setState(() {});
          }
        },
      ),
    );
  }
}
