import 'package:dream_jop/features/user_info/data/models/category.dart';

class GetCategoriesInfo {

  static List<Category> getAllCategories() {
    List<Category> categories = [
      Category(id: 1, name: 'Marketing', isChecked: false),
      Category(id: 2, name: 'HR', isChecked: false),
      Category(id: 3, name: 'Public Relations', isChecked: false),
      Category(id: 4, name: 'Sales', isChecked: false),
      Category(id: 5, name: 'Operationd', isChecked: false),
      Category(id: 6, name: 'Finance', isChecked: false),
      Category(id: 7, name: 'Analytics', isChecked: false),
      Category(id: 8, name: 'Design', isChecked: false),
    ];
    return categories;
  }
}
