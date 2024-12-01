import 'package:dream_jop/core/utils/service_locator.dart';
import 'package:dream_jop/features/home_page/data/repos/home_repo.dart';
import 'package:dream_jop/features/home_page/presentation/manager/cubits/home_cubit/home_cubit.dart';
import 'package:dream_jop/features/home_page/presentation/views/home_page.dart';
import 'package:dream_jop/features/user_info/presentation/views/fill_profile.dart';
import 'package:dream_jop/features/user_info/presentation/views/select_categories_page.dart';
import 'package:dream_jop/features/welcome/presentation/views/welcome.dart';
import 'package:dream_jop/features/user_info/presentation/manager/providers/categories_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();
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
        BlocProvider(
          create: (context) => HomeCubit(
            getIt.get<HomeRepo>(),
          )..fetchAllJobs(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Welcome(),
          SelectCategoriesPage.id: (context) => const SelectCategoriesPage(),
          FillProfile.id: (context) => const FillProfile(),
          HomePage.id: (context) => const HomePage(),
        },
      ),
    );
  }
}
