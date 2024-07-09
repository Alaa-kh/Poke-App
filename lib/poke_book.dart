import 'package:poke/src/core/constants/packages.dart';

class Pokebook extends StatelessWidget {
  const Pokebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, _) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => ThemeCubit()),
                  BlocProvider(
                      create: (context) => ViewAllCubit()
                        ..getDetails(limit: 5)
                        ..addSearchToList),
                  BlocProvider(
                      create: (context) => HomeCubit()
                        ..getDetails()
                        ..addSearchToListHome),
                  BlocProvider(create: (context) => ThemeCubit()..changeTheme)
                ],
                child: BlocBuilder<ThemeCubit, ThemeData>(
                    builder: (BuildContext context, ThemeData theme) {
                  return MaterialApp(
                      debugShowCheckedModeBanner: false,
                      theme: theme,
                      home: const HomeView());
                })));
  }
}
