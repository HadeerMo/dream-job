import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/promoted_jobs.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/recentlyAddedList.dart';
import 'package:dream_jop/features/user_info/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(children: [
            CustomAppbar(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Promoted jobs',
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
          ]),
        ),
        PromotedJobs(),
        SliverToBoxAdapter(
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
        RecentlyAdded(),
      ],
    );
  }
}
