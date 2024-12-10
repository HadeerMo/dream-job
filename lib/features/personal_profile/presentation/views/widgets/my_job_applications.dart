import 'package:dream_jop/features/personal_profile/presentation/views/widgets/job_application_card.dart';
import 'package:flutter/material.dart';

class MyJopApplications extends StatelessWidget {
  const MyJopApplications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'My job applications',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.8),
        ),
        SizedBox(
          height: 16,
        ),
        JobApplicationCard(
          title: 'Senior Engineer',
          subTitle: 'bankofamerica',
          imageSrc: 'assets/Images/jobLogo.png',
        ),
        SizedBox(
          height: 15,
        ),
        JobApplicationCard(
          title: 'Software Engineer',
          subTitle: 'Flexbort',
          imageSrc: 'assets/Images/companyLogo2.png',
        ),
          SizedBox(
          height: 15,
        ),
        JobApplicationCard(
          title: 'Mobile developer',
          subTitle: 'Communication co.',
          imageSrc: 'assets/Images/companyLogo3.png',
        ),
          SizedBox(
          height: 15,
        ),
        JobApplicationCard(
          title: 'Frontend developer',
          subTitle: 'LinkDev',
          imageSrc: 'assets/Images/companyLogo4.png',
        ),
          SizedBox(
          height: 15,
        ),
      ],
    );
  }
}