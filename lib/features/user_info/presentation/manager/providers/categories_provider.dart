import 'package:dream_jop/features/user_info/data/models/category.dart';
import 'package:dream_jop/features/user_info/data/repos/get_categories.dart';
import 'package:flutter/material.dart';

class CategoriesProvider with ChangeNotifier {
  List<Category> categoriesList = GetCategoriesInfo.getAllCategories();

  changeCategoryState(Category category) {
    for (int i = 0; i < categoriesList.length; i++) {
      if (categoriesList[i].id == category.id) {
        categoriesList[i].isChecked = !categoriesList[i].isChecked;
        break;
      }
    }
    notifyListeners();
  }
}
