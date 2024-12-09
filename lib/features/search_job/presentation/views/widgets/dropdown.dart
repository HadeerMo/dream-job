import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown(
      {super.key,
      required this.items,
      required this.selectedValue,
      this.onChanged});

  final List<String> items;
  final String selectedValue;
  final Function(String? value)? onChanged;
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: DropdownButton<String>(
        isExpanded: true,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black,
        ),
        iconSize: 14,
        value: selectedValue ?? widget.selectedValue,
        items: widget.items.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(
            () {
              selectedValue = newValue;
            },
          );
          widget.onChanged!(newValue);
        },
      ),
    );
  }
}
