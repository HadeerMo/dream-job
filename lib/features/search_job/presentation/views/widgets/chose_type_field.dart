
import 'package:dream_jop/constant.dart';
import 'package:flutter/material.dart';

class ChoseTypeField extends StatefulWidget {
  const ChoseTypeField({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<ChoseTypeField> createState() => _ChoseTypeFieldState();
}

class _ChoseTypeFieldState extends State<ChoseTypeField> {
  bool chosen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        chosen = !chosen;
        setState(() {});
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .25,
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
            color: chosen == true ? btnColor : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: chosen == true
                ? Border.all(width: 0)
                : Border.all(
                    color: const Color.fromARGB(255, 182, 182, 184),
                  )),
        child: Center(
            child: Text(
          widget.title,
          style: TextStyle(
            color: chosen == true
                ? Colors.white
                : const Color.fromARGB(255, 182, 182, 184),
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
