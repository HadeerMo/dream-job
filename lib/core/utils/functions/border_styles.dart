import 'package:flutter/material.dart';

OutlineInputBorder customFocusedBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 155, 153, 153),
        ),
      );
  }

  OutlineInputBorder customEnabledBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 204, 203, 203),
        ),
      );
  }

    OutlineInputBorder customErrorBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 240, 165, 165),
        ),
      );
  }

    OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    );
  }

