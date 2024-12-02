import 'package:flutter/material.dart';

class ErrorMsg extends StatelessWidget {
  const ErrorMsg({
    super.key, required this.errorMsg,
  });
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMsg,
      style: const TextStyle(color: Colors.red),
    );
  }
}