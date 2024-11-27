import 'package:dream_jop/constant.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_image.dart';
import 'package:dream_jop/features/home_page/presentation/views/widgets/card_info.dart';
import 'package:flutter/material.dart';

class JobsList extends StatelessWidget {
  const JobsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Promoted jobs',
          style: TextStyle(
              color: mainColor, fontSize: 20, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color.fromARGB(255, 158, 157, 157),
                width: .5,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CardImage(
                  imageUrl: 'assets/Images/images.png',
                ),
                const SizedBox(
                  width: 7,
                ),
                const CardInfo(
                  title: 'Sales Development Representative',
                  subTitle: 'Boulevard',
                  jopType: 'Full-time',
                  annualSalary: 50000,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.mail_outline,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.bookmark_border,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      '20 hrs ago',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 158, 157, 157),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
