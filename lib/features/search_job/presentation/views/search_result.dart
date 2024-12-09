import 'package:dream_jop/core/widgets/custom_bottom_bar.dart';
import 'package:dream_jop/features/search_job/presentation/views/widgets/search_result_page.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});
  static String id = 'Search result';
  @override
  Widget build(BuildContext context) {
    final subCategory = ModalRoute.of(context)?.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: const CustomBottomNavbar(),
      body: SearchResultBody(searchCategory: subCategory,),
    ));
  }
}
