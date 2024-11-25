import 'package:dream_jop/features/user_info/data/models/category.dart';
import 'package:dream_jop/features/user_info/presentation/manager/providers/categories_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.category,
    this.onTap,
  });
  final Category category;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          margin: const EdgeInsets.symmetric(horizontal: 35),
          decoration: BoxDecoration(
            color: category.isChecked == true
                ? const Color.fromARGB(255, 240, 239, 239)
                : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 158, 157, 157),
              width: .5,
            ),
          ),
          child: Row(
            children: [
              Consumer<CategoriesProvider>(
                builder: (context, catProvider, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        value: category.isChecked,
                        onChanged: (bool? value) {
                          catProvider.changeCategoryState(category);
                        },
                        activeColor: const Color(0xff2623d3),
                        shape: const StadiumBorder(),
                      ),
                    ),
                  );
                },
              ),
              Text(
                category.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 77, 89, 104),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
