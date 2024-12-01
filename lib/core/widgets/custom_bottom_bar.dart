import 'package:dream_jop/core/widgets/bottom_bar_action.dart';
import 'package:dream_jop/features/home_page/presentation/views/home_page.dart';
import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    super.key,
    this.pageName,
  });
  final String? pageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 1), // changes position of shadow
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomBarAction(
            pageName: pageName,
            navFor: HomePage.id,
            icon: pageName == HomePage.id ? Icons.home : Icons.home_outlined,
            onPressed: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
          BottomBarAction(
            pageName: pageName,
            navFor: 'jop Search',
            icon: pageName == 'jop Search'
                ? Icons.explore
                : Icons.explore_outlined,
            onPressed: () {},
          ),
          BottomBarAction(
            pageName: pageName,
            navFor: 'account',
            icon: pageName == 'account' ? Icons.person : Icons.person_outline,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

