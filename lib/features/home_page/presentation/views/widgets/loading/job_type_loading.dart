import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/loading_text_container.dart';
import 'package:flutter/material.dart';

class JobTybeLoading extends StatelessWidget {
  const JobTybeLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        LoadingTextContainer(),
        SizedBox(
          width: 4,
        ),
        LoadingTextContainer(),
      ],
    );
  }
}