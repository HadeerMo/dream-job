import 'package:dream_jop/core/utils/functions/border_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon, this.onTap,
  });
  final String hintText;
  final Icon? suffixIcon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'field is required';
      //   }
      // },
      onTap: onTap,
      cursorColor: const Color.fromARGB(255, 155, 153, 153),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: customEnabledBorder(),
        focusedBorder: customFocusedBorder(),
        errorBorder: customErrorBorder(),
        focusedErrorBorder: customFocusedBorder(),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 182, 182, 182),
          fontSize: 14.5,
        ),
      ),
    );
  }
}
