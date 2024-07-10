import 'package:poke/src/core/constants/packages.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
          child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.spaceEvenly,
                  children: [
                    HomeViewMainSection(),
                    HomeViewTextField()
                  ])))
    ]);
  }
}
