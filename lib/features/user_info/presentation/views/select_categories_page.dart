import 'package:dream_jop/features/user_info/presentation/views/widgets/select_categories_body.dart';
import 'package:flutter/material.dart';

class SelectCategoriesPage extends StatelessWidget {
  const SelectCategoriesPage({super.key});
  static String id = 'Select Categories';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SelectCategoriesBody(),
      ),
    );
  }
}
