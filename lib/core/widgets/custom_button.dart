import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(
          Color(0xff2623d3),
        ),
        minimumSize: const WidgetStatePropertyAll(
          Size(double.infinity, 50),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: const Text(
        'Find jobs',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}
