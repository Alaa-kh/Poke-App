import 'package:poke/src/core/constants/packages.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              ImagesAssets.backgroundImage,
            ),
            fit: BoxFit.fill,
          )),
          child: const Padding(
            padding: EdgeInsets.all(18.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.spaceEvenly,
              children: [
                HomeViewMainSection(),
                HomeViewTextField(),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
