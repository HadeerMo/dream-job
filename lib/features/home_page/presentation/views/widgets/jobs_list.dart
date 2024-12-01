import 'package:dream_jop/constant.dart';
import 'package:dream_jop/features/home_page/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/job_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobsList extends StatelessWidget {
  const JobsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
     SliverList(
      delegate: SliverChildListDelegate(
        [
          const Text(
            'Promoted jobs',
            style: TextStyle(
                color: mainColor, fontSize: 20, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeSuccess) {
                return SliverList.builder(
                    // shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return JobCard(job: state.jobs[index]);
                    });
              } else if (state is HomeFailure) {
                return Center(child: Text(state.errMsg));
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          const Text(
            'Recently added',
            style: TextStyle(
                color: mainColor, fontSize: 20, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 15,
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeSuccess) {
                return SliverList.builder(
                    // shrinkWrap: true,
                    itemCount: state.jobs.length,
                    itemBuilder: (context, index) {
                      return JobCard(job: state.jobs[index]);
                    });
              } else if (state is HomeFailure) {
                return Center(child: Text(state.errMsg));
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}
