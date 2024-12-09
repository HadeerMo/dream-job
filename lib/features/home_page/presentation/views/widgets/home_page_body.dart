import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/promoted_jobs.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/recently_addedlist.dart';
import 'package:dream_jop/core/widgets/custom_text_form_field.dart';
import 'package:dream_jop/features/search_job/presentation/views/job_search.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(children: [
            const CustomAppbar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    hintText: 'Search',
                    suffixIcon: const Icon(Icons.search),
                    onTap: () {
                      Navigator.pushNamed(context, JobSearch.id);
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Promoted jobs',
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ]),
        ),
        const PromotedJobs(),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recently added',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        const RecentlyAdded(),
      ],
    );
  }
}
