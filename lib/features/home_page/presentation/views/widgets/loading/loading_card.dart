import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/card_action_loading.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/card_info_loading.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/loading/loading_img.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 158, 157, 157),
              width: .5,
            ),
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoadingImage(),
                  SizedBox(
                    width: 7,
                  ),
                  CardInfoLoading(),
                ],
              ),
              CardActingLoading(),
            ],
          ),
        ),
      ),
    );
  }
}