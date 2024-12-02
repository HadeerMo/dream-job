import 'package:dream_jop/features/home_page/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/job_card.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/loadingCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromotedJobs extends StatelessWidget {
  const PromotedJobs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccess) {
          return SliverList.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: JobCard(job: state.jobs[index]),
              );
            },
          );
        } else if (state is HomeFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.errMsg),
            ),
          );
        } else {
          return SliverList.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return const LoadingCard();
              });
        }
      },
    );
  }
}
