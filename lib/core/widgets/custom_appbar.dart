import 'package:dream_jop/constant.dart';
import 'package:dream_jop/core/widgets/main_title.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    this.back,
    this.markIt,
  });
  final IconData? back;
  final IconData? markIt;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      height: MediaQuery.of(context).size.height * .1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  back!=null?Navigator.pop(context):'';
                },
                icon: Icon(
                  back,
                  color: Colors.white,
                  size: 15,
                )),
            const MainTitle(
              fontSize: 27,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  markIt,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
