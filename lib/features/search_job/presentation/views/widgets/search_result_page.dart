import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/promoted_jobs.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/recently_addedlist.dart';
import 'package:flutter/material.dart';

class SearchResultBody extends StatelessWidget {
  const SearchResultBody({super.key, required this.searchCategory});
  final String searchCategory;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomAppbar(back: true,),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Results for "$searchCategory" jobs',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.4),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
            ],
          ),
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
