import 'package:dream_jop/core/widgets/custom_button.dart';
import 'package:dream_jop/features/user_info/data/models/category.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/features/user_info/presentation/views/fill_profile.dart';
import 'package:dream_jop/features/user_info/presentation/views/widgets/custom_check_box.dart';
import 'package:dream_jop/features/user_info/presentation/views/widgets/select_categories_title.dart';
import 'package:dream_jop/features/user_info/presentation/manager/providers/categories_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectCategoriesBody extends StatelessWidget {
  const SelectCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    CategoriesProvider provider = Provider.of<CategoriesProvider>(context);
    List<Category> categoriesList = provider.categoriesList;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const CustomAppbar(),
          const SelectCategoriesTitle(),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              return CustomCheckbox(
                category: categoriesList[index],
                onTap: () {
                  provider.changeCategoryState(categoriesList[index]);
                },
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
            child: CustomButton(
              text: 'Find jobs',
              width: double.infinity,
              height: 50,
              onPressed: () {
                Navigator.of(context).pushNamed(FillProfile.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
