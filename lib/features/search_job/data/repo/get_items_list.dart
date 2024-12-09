class GetItemsList {
  List<String> cItems = [
    'Software Development',
    'Mobile Development',
    'Web Development',
    'Graphic Design',
    'Digital Marketing',
    'Data Entry',
    'Customer Support',
  ];
    List<String> subCItems = [
    'UI/UX design',
    'Full-stack development',
    'Android',
    'iOS',
    'Animation',
    'marketing',
    'IT support',
  ];
  List<String> returnCategoryItems() {
    return cItems;
  }
    List<String> returnSubcategoryItems() {
    return subCItems;
  }
}
