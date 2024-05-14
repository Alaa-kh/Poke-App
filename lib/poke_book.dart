import 'package:poke/src/core/constants/packages.dart';
import 'package:poke/src/features/view_all/views/view_all_view.dart';

class Pokebook extends StatelessWidget {
  const Pokebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, _) => MaterialApp(
        theme: ThemeData(fontFamily: 'SofiaSans'),
        debugShowCheckedModeBanner: false,
        home: const ViewAllView(),
      ),
    );
  }
}
