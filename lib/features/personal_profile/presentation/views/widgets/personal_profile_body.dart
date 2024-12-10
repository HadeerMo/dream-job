import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/utils/functions/sub_string_text.dart';
import 'package:dream_jop/core/utils/functions/truncate_text.dart';
import 'package:dream_jop/core/widgets/custom_appbar.dart';
import 'package:dream_jop/core/widgets/custom_devider.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_image.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_info.dart';
import 'package:dream_jop/features/personal_profile/presentation/views/widgets/custom_profile_button.dart';
import 'package:dream_jop/features/personal_profile/presentation/views/widgets/job_application_card.dart';
import 'package:dream_jop/features/personal_profile/presentation/views/widgets/my_job_applications.dart';
import 'package:dream_jop/features/personal_profile/presentation/views/widgets/profile_action_buttons.dart';
import 'package:flutter/material.dart';

class PersonalProfileBody extends StatelessWidget {
  const PersonalProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppbar(
          back: true,
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .17,
                height: MediaQuery.of(context).size.width * .17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage('assets/Images/user.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Andrew Dyer',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Flutter Mobile Develober',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromARGB(255, 192, 191, 191),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              ProfileActionButtons()
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        DeviderWithPadding(),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: MyJopApplications(),
        )
      ],
    );
  }
}



