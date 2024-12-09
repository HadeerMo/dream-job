import 'package:dream_jop/core/utils/functions/border_styles.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/core/widgets/custom_button.dart';
import 'package:dream_jop/features/search_job/data/repo/get_items_list.dart';
import 'package:dream_jop/features/search_job/presentation/views/search_result.dart';
import 'package:dream_jop/features/search_job/presentation/views/widgets/chose_job_type.dart';
import 'package:dream_jop/features/search_job/presentation/views/widgets/drop_down_item.dart';
import 'package:dream_jop/features/search_job/presentation/views/widgets/salary_range_slider.dart';
import 'package:flutter/material.dart';

class JobSearchBody extends StatelessWidget {
  const JobSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    String? subCategory;
    GetItemsList getCategoryItems = GetItemsList();
    List<String> categoryItems = getCategoryItems.cItems;
    List<String> subcategoryItems = getCategoryItems.subCItems;
    return ListView(
      children: [
        const CustomAppbar(),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropDownItem(
                items: categoryItems,
                title: 'Category',
              ),
              const SizedBox(
                height: 20,
              ),
              DropDownItem(
                items: subcategoryItems,
                title: 'Sub-category',
                onChanged: (value) {
                  subCategory = value!;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  enabledBorder: customBorder(),
                  focusedBorder: customBorder(),
                  errorBorder: customErrorBorder(),
                  focusedErrorBorder: customBorder(),
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              const SalaryRangeSlider(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Job type',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              const ChoseJobType(),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(SearchResult.id, arguments: subCategory??'UI/UX design');
                },
                text: 'Search',
                width: double.infinity,
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
