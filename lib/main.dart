import 'package:dream_jop/features/user_info/presentation/views/fill_profile.dart';
import 'package:dream_jop/features/user_info/presentation/views/select_categories_page.dart';
import 'package:dream_jop/features/welcome/presentation/views/welcome.dart';
import 'package:dream_jop/features/user_info/presentation/manager/providers/categories_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const DreamJop());
}

class DreamJop extends StatelessWidget {
  const DreamJop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CategoriesProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Welcome(),
          SelectCategoriesPage.id: (context) => const SelectCategoriesPage(),
          FillProfile.id: (context) => const FillProfile(),
        },
      ),
    );
  }
}
