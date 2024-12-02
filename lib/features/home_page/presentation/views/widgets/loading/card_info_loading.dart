import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/job_type_loading.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/loading_box.dart';
import 'package:flutter/material.dart';

class CardInfoLoading extends StatelessWidget {
  const CardInfoLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoadingBox(
          width: MediaQuery.of(context).size.width * .4,
        ),
        const SizedBox(
          height: 6,
        ),
        LoadingBox(
          width: MediaQuery.of(context).size.width * .25,
        ),
        const SizedBox(
          height: 5,
        ),
        const JobTybeLoading(),
        const SizedBox(
          height: 15,
        ),
        LoadingBox(
          width: MediaQuery.of(context).size.width * .13,
        ),
      ],
    );
  }
}