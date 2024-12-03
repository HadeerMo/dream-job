import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/details_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsInfoSection extends StatelessWidget {
  const DetailsInfoSection({
    super.key,
    required this.job,
  });

  final Jobs job;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DetailsItem(
          title: job.locations![0].name! == 'Flexible / Remote'
              ? 'Remote'
              : job.locations![0].name!,
          iconSize: 23,
          icon: FontAwesomeIcons.mapPin,
        ),
        DetailsItem(
          title: job.type!,
          iconSize: 20,
          icon: FontAwesomeIcons.briefcase,
        ),
        DetailsItem(
          title: job.locations![0].name! == 'Flexible / Remote'
              ? 'Remote'
              : 'Onsite',
          iconSize: 20,
          icon: FontAwesomeIcons.locationDot,
        ),
      ],
    );
  }
}